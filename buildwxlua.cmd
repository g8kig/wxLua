
cd wxlua/wxLua
if exist build_win rd /s/q build_win
mkdir build_win
cd build_win
cmake -G"MinGW Makefiles" -DwxWidgets_CONFIGURATION=msw32u -DwxWidgets_LIB_DIR=D:\Source\wxLua\wxWidgets-3.2.1\install_win\lib\gcc_x64_dll -DwxWidgets_ROOT_DIR=D:\Source\wxLua\wxWidgets-3.2.1\install_win -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
mingw32-make.exe -j8
cd ..
cd ..
cd ..
