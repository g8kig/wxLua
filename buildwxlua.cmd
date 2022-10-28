
cd wxlua/wxLua
if exist build_win rm -r build_win
mkdir build_win
cd build_win
cmake -G"Ninja" -DwxWidgets_CONFIG_EXECUTABLE=..\..\..\wxWidgets-3.2.1\build_win\lib\wx\config\msw-unicode-3.2 -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
ninja
cd ..
cd ..
