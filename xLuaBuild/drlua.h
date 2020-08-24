#ifndef DR_LUA_H
#define DR_LUA_H
#include "lua.h"
#include "stdint.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

typedef struct ByteArray {
    int size; //first int size header
    int8_t values[1];
} ByteArray;

#define TO_C_INDEX(P) P - 1

typedef void (*USER_DATA_ALLOC)(uint8_t* buff, int length, int header);

//void drl_set_userdata_alloc(USER_DATA_ALLOC callback);

//void drl_userdata_copy(uint8_t* src, uint8_t* dst, int length);

LUA_API int luaopen_cmsgpack(lua_State* L);




#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */ 


#endif
