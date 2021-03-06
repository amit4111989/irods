/* For copyright information please refer to files in the COPYRIGHT directory
 */

#include <sys/stat.h>
#include <errno.h>
#include "debug.hpp"
#include "utils.hpp"
#include "datetime.hpp"
#include "filesystem.hpp"
#include "irods_get_full_path_for_config_file.hpp"
#include "irods_log.hpp"
#include "rodsConnect.h"

char *getRuleBasePath( char *ruleBaseName, char rulesFileName[MAX_NAME_LEN] ) {
    std::string cfg_file, fn( ruleBaseName );
    fn += ".re";
    irods::error ret = irods::get_full_path_for_config_file( fn, cfg_file );
    if ( !ret.ok() ) {
        irods::log( PASS( ret ) );
        return 0;
    }
    strncpy( rulesFileName, cfg_file.c_str(), MAX_NAME_LEN );

    return rulesFileName;

}

int getModifiedTime( char *fn, time_type *timestamp ) {
    boost::filesystem::path path( fn );
    time_type time = boost::filesystem::last_write_time( path );
    time_type_set( *timestamp, time );
    return 0;
}
