

#ifndef GET_HIER_FROM_LEAF_ID_HPP
#define GET_HIER_FROM_LEAF_ID_HPP

#include "rodsDef.h"
#include "rodsType.h"
#include "rcConnect.h"

typedef struct {
    rodsLong_t  resc_id_;
} get_hier_inp_t;

typedef struct {
    char hier_[MAX_NAME_LEN];
} get_hier_out_t;

#define GetHierInp_PI "double resc_id_;"
#define GetHierOut_PI "str hier_[MAX_NAME_LEN];"

#ifdef RODS_SERVER
    #define RS_GET_HIER_FROM_LEAF_ID rsGetHierFromLeafId
    int rsGetHierFromLeafId(rsComm_t*,get_hier_inp_t*,get_hier_out_t**);
#else
    #define RS_GET_HIER_FROM_LEAF_ID NULL
#endif
    
int rcGetHierFromLeafId(rcComm_t*,get_hier_inp_t*,get_hier_out_t**);

#endif // GET_HIER_FROM_LEAF_ID_HPP



