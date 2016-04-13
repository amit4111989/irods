# TODO static dev libraries?
# TODO symlinks for h -> hpp headers?

install(
  TARGETS
    RodsAPIs
  ARCHIVE
    DESTINATION usr/lib
    COMPONENT ${IRODS_PACKAGE_COMPONENT_DEVELOPMENT_NAME}
  )

set(
  IRODS_GENERATED_HEADERS
  ${CMAKE_BINARY_DIR}/lib/core/include/irods_home_directory.hpp
  ${CMAKE_BINARY_DIR}/lib/core/include/irods_plugin_home_directory.hpp
  ${CMAKE_BINARY_DIR}/lib/core/include/irods_version.h
  ${CMAKE_BINARY_DIR}/lib/core/include/rodsVersion.h
  ${CMAKE_BINARY_DIR}/lib/core/include/server_control_plane_command.hpp
  )

set(
  IRODS_LIB_CORE_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/lib/core/include/apiHandler.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/base64.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/bunUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/chksumUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/cpUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/fsckUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/getRodsEnv.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/getUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/guiProgressCallback.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_assert.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_auth_constants.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_auth_factory.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_auth_manager.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_auth_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_auth_plugin.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_auth_types.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_buffer_encryption.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_children_parser.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_client_api_table.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_client_server_negotiation.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_configuration_keywords.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_configuration_parser.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_environment_properties.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_error.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_exception.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_first_class_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_get_full_path_for_config_file.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_gsi_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_hash.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_hashtable.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_hierarchy_parser.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_home_directory.hpp.src
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_krb_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_kvp_string_parser.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_lexical_cast.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_list.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_load_plugin.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_log.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_lookup_table.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_native_auth_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_network_constants.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_network_factory.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_network_manager.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_network_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_network_plugin.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_network_types.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_osauth_auth_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_pack_table.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_pam_auth_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_parse_command_line_options.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_pluggable_auth_scheme.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_plugin_base.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_plugin_context.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_plugin_name_generator.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_random.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_serialization.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_server_properties.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_signal.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_ssl_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_stacktrace.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_string_tokenize.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_tcp_object.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_threads.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/irods_virtual_path.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/lsUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/mcollUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/microservice.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/miscUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/mkdirUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/msParam.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/mvUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/obf.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/objInfo.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/osauth.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/packStruct.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/parseCommandLine.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/phybunUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/phymvUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/procApiRequest.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/putUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rcConnect.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rcGlobal.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rcGlobalExtern.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rcMisc.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rcPortalOpr.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/regUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/region.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/replUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rmUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rmtrashUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rods.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsClient.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsDef.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsError.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsErrorTable.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsGenQuery.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsGenQueryNames.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsGeneralUpdate.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsKeyWdDef.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsLog.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsPackInstruct.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsPackTable.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsPath.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsQuota.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsType.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsUser.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rodsXmsg.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/rsyncUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/scanUtil.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/sockComm.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/sockCommNetworkInterface.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/socket_wrapper.hpp
  ${CMAKE_SOURCE_DIR}/lib/core/include/sslSockComm.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/stringOpr.h
  ${CMAKE_SOURCE_DIR}/lib/core/include/trimUtil.h
  )

set(
  IRODS_LIB_HASHER_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/lib/hasher/include/HashStrategy.hpp
  ${CMAKE_SOURCE_DIR}/lib/hasher/include/Hasher.hpp
  ${CMAKE_SOURCE_DIR}/lib/hasher/include/MD5Strategy.hpp
  ${CMAKE_SOURCE_DIR}/lib/hasher/include/SHA256Strategy.hpp
  ${CMAKE_SOURCE_DIR}/lib/hasher/include/checksum.hpp
  ${CMAKE_SOURCE_DIR}/lib/hasher/include/irods_hasher_factory.hpp
  )

set(
  IRODS_LIB_API_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/lib/api/include/apiHeaderAll.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/apiNumber.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/apiPackTable.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/apiTable.hpp
  ${CMAKE_SOURCE_DIR}/lib/api/include/authCheck.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/authPluginRequest.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/authRequest.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/authResponse.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/authenticate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/bulkDataObjPut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/bulkDataObjReg.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/chkNVPathPerm.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/chkObjPermAndStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/client_hints.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/closeCollection.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/collCreate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/collRepl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataCopy.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataGet.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjChksum.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjClose.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjCopy.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjCreate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjCreateAndStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjGet.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjInpOut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjLock.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjLseek.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjOpen.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjOpenAndStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjPhymv.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjPut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjRead.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjRename.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjRepl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjRsync.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjTrim.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjTruncate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjUnlink.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataObjWrite.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/dataPut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/endTransaction.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/execCmd.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/execMyRule.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileChksum.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileChmod.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileClose.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileClosedir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileCreate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileGet.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileGetFsFreeSpace.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileLseek.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileMkdir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileOpen.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileOpendir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/filePut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileRead.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileReaddir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileRename.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileRmdir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileStageToCache.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileSyncToArch.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileTruncate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileUnlink.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/fileWrite.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/genQuery.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/generalAdmin.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/generalRowInsert.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/generalRowPurge.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/generalUpdate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getHierarchyForResc.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getHostForGet.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getHostForPut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getLimitedPassword.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getMiscSvrInfo.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getRemoteZoneResc.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getRescQuota.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getTempPassword.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getTempPasswordForOther.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/getXmsgTicket.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/get_hier_from_leaf_id.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/ies_client_hints.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/l3FileGetSingleBuf.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/l3FilePutSingleBuf.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/modAVUMetadata.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/modAccessControl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/modColl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/modDataObjMeta.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/objStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/openCollection.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/oprComplete.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/pamAuthRequest.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/phyBundleColl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/phyPathReg.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/procStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/querySpecColl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/rcvXmsg.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/readCollection.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/regColl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/regDataObj.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/regReplica.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/rmColl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/ruleExecDel.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/ruleExecMod.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/ruleExecSubmit.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/sendXmsg.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/server_report.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/set_round_robin_context.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/simpleQuery.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/specificQuery.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/sslEnd.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/sslStart.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/streamClose.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/streamRead.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/structFileBundle.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/structFileExtAndReg.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/structFileExtract.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/structFileSync.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileClose.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileClosedir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileCreate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileGet.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileLseek.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileMkdir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileOpen.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileOpendir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFilePut.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileRead.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileReaddir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileRename.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileRmdir.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileStat.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileTruncate.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileUnlink.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/subStructFileWrite.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/syncMountedColl.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/ticketAdmin.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/unbunAndRegPhyBunfile.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/unregDataObj.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/userAdmin.h
  ${CMAKE_SOURCE_DIR}/lib/api/include/zone_report.h
  )

set(
  IRODS_LIB_RBUDP_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/lib/rbudp/include/QUANTAnet_rbudpBase_c.h
  ${CMAKE_SOURCE_DIR}/lib/rbudp/include/QUANTAnet_rbudpReceiver_c.h
  ${CMAKE_SOURCE_DIR}/lib/rbudp/include/QUANTAnet_rbudpSender_c.h
  )

set(
  IRODS_SERVER_CORE_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/server/core/include/collection.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/dataObjOpr.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/fileOpr.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/initServer.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irodsReServer.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irodsXmsgServer.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_api_calling_functions.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_collection_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_data_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_database_constants.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_database_factory.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_database_manager.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_database_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_database_plugin.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_database_types.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_dynamic_cast.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_file_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_get_l1desc.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_mysql_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_oracle_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_physical_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_postgres_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_backport.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_constants.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_manager.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_plugin.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_plugin_impostor.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_redirect.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_resource_types.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_server_api_call.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_server_api_table.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_server_control_plane.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_server_state.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/irods_structured_object.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/miscServerFunct.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/objDesc.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/objMetaOpr.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/physPath.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/procLog.h
  ${CMAKE_SOURCE_DIR}/server/core/include/readServerConfig.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/resource.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/rodsAgent.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/rodsConnect.h
  ${CMAKE_SOURCE_DIR}/server/core/include/rodsServer.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/rsApiHandler.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/rsGlobalExtern.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/rsIcatOpr.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/rsLog.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/specColl.hpp
  ${CMAKE_SOURCE_DIR}/server/core/include/xmsgLib.hpp
  )

set(
  IRODS_SERVER_ICAT_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/server/icat/include/icatDefines.h
  ${CMAKE_SOURCE_DIR}/server/icat/include/icatGlobalsExtern.hpp
  ${CMAKE_SOURCE_DIR}/server/icat/include/icatHighLevelRoutines.hpp
  ${CMAKE_SOURCE_DIR}/server/icat/include/icatStructs.hpp
  )

set(
  IRODS_SERVER_RE_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/server/re/include/irods_ms_plugin.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/irods_re_plugin.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/irods_re_structs.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/irods_re_serialization.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/locks.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/msiHelper.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/reAction.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/reDataObjOpr.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/reDefines.h
  ${CMAKE_SOURCE_DIR}/server/re/include/reIn2p3SysRule.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/reNaraMetaData.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/reSysDataObjOpr.hpp
  ${CMAKE_SOURCE_DIR}/server/re/include/reconstants.hpp
  )

set(
  IRODS_SERVER_DRIVERS_INCLUDE_HEADERS
  ${CMAKE_SOURCE_DIR}/server/drivers/include/fileDriver.hpp
  )

install(
  FILES
  ${IRODS_GENERATED_HEADERS}
  ${IRODS_LIB_CORE_INCLUDE_HEADERS}
  ${IRODS_LIB_HASHER_INCLUDE_HEADERS}
  ${IRODS_LIB_API_INCLUDE_HEADERS}
  ${IRODS_LIB_RBUDP_INLUDE_HEADERS}
  ${IRODS_SERVER_CORE_INCLUDE_HEADERS}
  ${IRODS_SERVER_ICAT_INCLUDE_HEADERS}
  ${IRODS_SERVER_RE_INCLUDE_HEADERS}
  ${IRODS_SERVER_DRIVERS_INCLUDE_HEADERS}
  DESTINATION usr/include/irods
  COMPONENT ${IRODS_PACKAGE_COMPONENT_DEVELOPMENT_NAME}
  )

install(
  EXPORT
  IRODSTargets
  DESTINATION usr/lib/irods/cmake
  COMPONENT ${IRODS_PACKAGE_COMPONENT_DEVELOPMENT_NAME}
  )

set(CPACK_DEBIAN_${IRODS_PACKAGE_COMPONENT_DEVELOPMENT_NAME_UPPERCASE}_PACKAGE_NAME "irods-development")
set(CPACK_DEBIAN_${IRODS_PACKAGE_COMPONENT_DEVELOPMENT_NAME_UPPERCASE}_PACKAGE_DEPENDS "libssl-dev")

set(CPACK_RPM_${IRODS_PACKAGE_COMPONENT_DEVELOPMENT_NAME}_PACKAGE_NAME "irods-development")
if (IRODS_LINUX_DISTRIBUTION_NAME STREQUAL "centos")
  set(CPACK_RPM_${IRODS_PACKAGE_COMPONENT_SERVER_NAME}_PACKAGE_REQUIRES "openssl-devel")
elseif (IRODS_LINUX_DISTRIBUTION_NAME STREQUAL "opensuse")
  set(CPACK_RPM_${IRODS_PACKAGE_COMPONENT_SERVER_NAME}_PACKAGE_REQUIRES "libopenssl-devel")
endif()
