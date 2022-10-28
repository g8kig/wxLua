
set CURDIR=%cd%
setlocal
cd wxlua/wxLua
if exist build_win rd /s/q build_win
mkdir build_win
cd build_win
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DwxWidgets_CONFIGURATION=msw32u -DwxWidgets_LIB_DIR="%CURDIR%\wxWidgets-3.2.1\install_win\lib\vc_x64_dll" -DwxWidgets_ROOT_DIR="%CURDIR%\wxWidgets-3.2.1\install_win" -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
ninja
cd ..
cd ..
cd ..
copy wxWidgets-3.2.1\install_win\lib\vc_x64_dll\*.dll wxlua\wxLua\build_win\bin\Debug

