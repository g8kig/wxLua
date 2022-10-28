
setlocal
set CURDIR=%cd%
cd wxWidgets-3.2.1
if exist build_win rd /s/q build_win
if exist install_win rd /s/q  install_win
mkdir build_win
mkdir install_win 
cd build_win
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=..\install_win -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON -DwxBUILD_TOOLKIT=msw -DwxBUILD_VENDOR=custom -DwxUSE_LIBTIFF=OFF -DwxBUILD_PRECOMP=ON ..
ninja install
cd ..
cd ..
cd wxlua/wxLua
if exist build_win rd /s/q build_win
mkdir build_win
cd build_win
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DwxWidgets_CONFIGURATION=msw32u -DwxWidgets_LIB_DIR="%CURDIR%/wxWidgets-3.2.1/install_win/lib/vc_x64_dll" -DwxWidgets_ROOT_DIR="%CURDIR%/wxWidgets-3.2.1/install_win" -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
ninja
cd ..
cd ..
cd ..
copy wxWidgets-3.2.1\install_win\lib\vc_x64_dll\*.dll wxlua\wxLua\build_win\bin\Debug

