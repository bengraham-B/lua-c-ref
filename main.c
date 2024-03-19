#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int main() {
    lua_State *L = luaL_newstate();   // Create Lua state
    luaL_openlibs(L);                 // Open Lua standard libraries

    // Load and execute Lua script
    luaL_dofile(L, "script.lua");
    luaL_dofile(L, "other_script.lua");

    // Close Lua state
    lua_close(L);

    return 0;
}
