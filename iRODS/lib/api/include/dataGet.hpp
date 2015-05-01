/*** Copyright (c), The Regents of the University of California            ***
 *** For more information please refer to files in the COPYRIGHT directory ***/

#ifndef DATA_GET_HPP
#define DATA_GET_HPP

/* This is a high level type API call */

#include "rods.h"
#include "rcMisc.h"
#include "procApiRequest.h"
#include "apiNumber.h"
#include "fileOpen.hpp"
#include "fileOpen.hpp"
#include "dataObjGet.hpp"

#if defined(RODS_SERVER)
#define RS_DATA_GET rsDataGet
/* prototype for the server handler */
int
rsDataGet( rsComm_t *rsComm, dataOprInp_t *dataGetInp,
           portalOprOut_t **portalOprOut );
int
remoteDataGet( rsComm_t *rsComm, dataOprInp_t *dataGetInp,
               portalOprOut_t **portalOprOut, rodsServerHost_t *rodsServerHost );
int
_rsDataGet( rsComm_t *rsComm, dataOprInp_t *dataGetInp,
            portalOprOut_t **portalOprOut );
#else
#define RS_DATA_GET NULL
#endif

/* prototype for the client call */
int
rcDataGet( rcComm_t *conn, dataOprInp_t *dataGetInp,
           portalOprOut_t **portalOprOut );

#endif	/* DATA_GET_H */
