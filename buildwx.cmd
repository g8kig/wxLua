
setlocal
set CURDIR=%cd%
cd %CURDIR%\wxWidgets-3.2.1
if exist build_win rd /s/q build_win
if exist install_win rd /s/q  install_win
mkdir build_win
mkdir install_win 
cd build_win
cmake -G"MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release -DCMAKE_INSTALL_PREFIX=..\install_win ^
    -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON -DwxBUILD_TOOLKIT=msw -DwxBUILD_VENDOR=custom -DwxBUILD_PRECOMP=OFF ^
    -DwxUSE_LIBTIFF=OFF ..
if NOT ["%errorlevel%"]==["0"] (
    exit /b %errorlevel%
)
cmake --build . --target install --parallel %NUMBER_OF_PROCESSORS%
if NOT ["%errorlevel%"]==["0"] (
    exit /b %errorlevel%
)
cd %CURDIR%\wxlua\wxLua
if exist build_win rd /s/q build_win
mkdir build_win
cd build_win
cmake -G"MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release ^
    -DwxWidgets_CONFIGURATION=msw32u -DwxWidgets_LIB_DIR="%CURDIR%\wxWidgets-3.2.1\install_win\lib\gcc_x64_dll" -DwxWidgets_ROOT_DIR="%CURDIR%\wxWidgets-3.2.1\install_win" ^
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
if NOT ["%errorlevel%"]==["0"] (
    exit /b %errorlevel%
)
cmake --build . --parallel %NUMBER_OF_PROCESSORS%
if NOT ["%errorlevel%"]==["0"] (
    exit /b %errorlevel%
)
cd %CURDIR%
copy %CURDIR%\wxWidgets-3.2.1\install_win\lib\gcc_x64_dll\*.dll wxlua\wxLua\build_win\bin\Release
