/*** Copyright (c), The Regents of the University of California            ***
 *** For more information please refer to files in the COPYRIGHT directory ***/
/* structFileBundle.h - This file may be generated by a program or
 * script
 */

#ifndef STRUCT_FILE_BUNDLE_HPP
#define STRUCT_FILE_BUNDLE_HPP

/* This is a Object File I/O call */

#include "rods.h"
#include "rcMisc.h"
#include "procApiRequest.h"
#include "apiNumber.h"
#include "structFileExtAndReg.hpp"

#if defined(RODS_SERVER)
#define RS_STRUCT_FILE_BUNDLE rsStructFileBundle
/* prototype for the server handler */
int
rsStructFileBundle( rsComm_t *rsComm,
                    structFileExtAndRegInp_t *structFileBundleInp );
int
_rsStructFileBundle( rsComm_t *rsComm,
                     structFileExtAndRegInp_t *structFileBundleInp );
int
remoteStructFileBundle( rsComm_t *rsComm,
                        structFileExtAndRegInp_t *structFileBundleInp,
                        rodsServerHost_t *rodsServerHost );
#else
#define RS_STRUCT_FILE_BUNDLE NULL
#endif

/* prototype for the client call */
int
rcStructFileBundle( rcComm_t *conn,
                    structFileExtAndRegInp_t *structFileBundleInp );

#endif	/* STRUCT_FILE_BUNDLE_H */
