


#include "rcMisc.h"
#include "rsGlobalExtern.hpp"
#include "rodsErrorTable.h"

#include "irods_server_properties.hpp"
#include "irods_log.hpp"
#include "irods_plugin_name_generator.hpp"
#include "irods_resource_manager.hpp"
#include "irods_get_full_path_for_config_file.hpp"
#include "irods_report_plugins_in_json.hpp"

#include "client_hints.h"
#include "ies_client_hints.h"
#include "readServerConfig.hpp"

#include "jansson.h"

#include <fstream>
#include <boost/algorithm/string.hpp>
#include <boost/filesystem.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/archive/iterators/base64_from_binary.hpp>
#include <boost/archive/iterators/insert_linebreaks.hpp>
#include <boost/archive/iterators/transform_width.hpp>
#include <boost/archive/iterators/ostream_iterator.hpp>

#include <sys/utsname.h>

const std::string HOST_ACCESS_CONTROL_FILE( "HostAccessControl" );


int _rsClientHints(
    rsComm_t*    _comm,
    bytesBuf_t** _bbuf );

int rsClientHints(
    rsComm_t*    _comm,
    bytesBuf_t** _bbuf ) {

    // always execute this locally
    int status = _rsClientHints(
                     _comm,
                     _bbuf );
    if ( status < 0 ) {
        rodsLog(
            LOG_ERROR,
            "rsClientHints: rcClientHints failed, status = %d",
            status );
    }

    return status;

} // rsClientHints

irods::error get_hash_and_policy(
    rsComm_t* _comm,
    std::string& _hash,
    std::string& _policy ) {
    if ( !_comm ) {
        return ERROR(
                   SYS_INVALID_INPUT_PARAM,
                   "comm is null" );
    }

    try {
        _hash = irods::get_server_property<const std::string>(DEFAULT_HASH_SCHEME_KW);
    } catch ( const irods::exception& ) {
        _hash = "SHA256";
    }

    try {
        _policy = irods::get_server_property<const std::string>(MATCH_HASH_POLICY_KW);
    } catch ( const irods::exception& ) {
        _policy = "compatible";
    }

    return SUCCESS();

} // get_hash_and_policy

int _rsClientHints(
    rsComm_t*    _comm,
    bytesBuf_t** _bbuf ) {

    if ( !_comm || !_bbuf ) {
        rodsLog(
            LOG_ERROR,
            "_rsServerReport: null comm or bbuf" );
        return SYS_INVALID_INPUT_PARAM;
    }

    ( *_bbuf ) = ( bytesBuf_t* ) malloc( sizeof( bytesBuf_t ) );
    if ( !( *_bbuf ) ) {
        rodsLog(
            LOG_ERROR,
            "_rsClientHints: failed to allocate _bbuf" );
        return SYS_MALLOC_ERR;

    }

    bytesBuf_t* ies_buf = 0;
    int status = rsIESClientHints(
                     _comm,
                     &ies_buf );
    if ( status < 0 ) {
        rodsLog(
            LOG_ERROR,
            "_rsClientHints: rsIESClientHints failed %d",
            status );
        return status;
    }

    json_error_t j_err;
    json_t* client_hints = json_loads(
                               ( char* )ies_buf->buf,
                               JSON_REJECT_DUPLICATES, &j_err );
    freeBBuf( ies_buf );
    if ( !client_hints ) {
        rodsLog(
            LOG_ERROR,
            "_rsClientHints - json_loads failed [%s]",
            j_err.text );
        return ACTION_FAILED_ERR;
    }

    std::string hash, hash_policy;
    irods::error ret = get_hash_and_policy( _comm, hash, hash_policy );
    if ( !ret.ok() ) {
        irods::log( PASS( ret ) );
    }

    json_object_set(
        client_hints,
        "hash_scheme",
        json_string( hash.c_str() ) );
    json_object_set(
        client_hints,
        "match_hash_policy",
        json_string( hash_policy.c_str() ) );

    json_t* plugins = 0;
    ret = irods::get_plugin_array(plugins);
    if(!ret.ok()) {
        irods::log(PASS(ret));
    }
    json_object_set(client_hints, "plugins", plugins);

    char* tmp_buf = json_dumps(
                        client_hints,
                        JSON_INDENT( 4 ) );

    // *SHOULD* free All The Things...
    json_decref( client_hints );

    ( *_bbuf )->buf = tmp_buf;
    ( *_bbuf )->len = strlen( tmp_buf );

    return 0;

} // _rsClientHints
