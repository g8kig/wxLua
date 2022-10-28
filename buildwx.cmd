
setlocal
cd wxWidgets-3.2.1
if exist build_win rd /s/q build_win
if exist install_win rd /s/q  install_win
mkdir build_win
mkdir install_win 
cd build_win
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=..\install_win -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON -DwxBUILD_TOOLKIT=msw -DwxBUILD_VENDOR=custom -DwxUSE_LIBTIFF=OFF -DwxBUILD_PRECOMP=OFF ..
ninja install
cd ..
cd ..
cd wxlua\wxLua
if exist build_win rm -r build_win
mkdir build_win
cd build_win
cmake -G"Ninja" -DwxWidgets_CONFIG_EXECUTABLE=..\..\..\wxWidgets-3.2.1\build_win\lib\wx\config\msw-unicode-3.2 -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
ninja
cd ..
cd ..
cd ..


