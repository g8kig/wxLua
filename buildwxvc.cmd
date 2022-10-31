
setlocal
set CURDIR=%cd%
cd %CURDIR%\wxWidgets-3.2.1
if exist build_win rd /s/q build_win
if exist install_win rd /s/q  install_win
mkdir build_win
mkdir install_win 
cd build_win
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=..\install_win -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON -DwxBUILD_TOOLKIT=msw -DwxBUILD_VENDOR=custom -DwxUSE_LIBTIFF=OFF -DwxBUILD_PRECOMP=ON ..
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
set WXINCLUDE=%CURDIR%\wxWidgets-3.2.1\install_win\include
copy %CURDIR%\wxWidgets-3.2.1\install_win\include\wx\msw\setup.h %CURDIR%\wxWidgets-3.2.1\install_win\include\wx\setup.h
cmake -G"Ninja" -DCMAKE_C_FLAGS="-I%WXINCLUDE%" -DCMAKE_RC_FLAGS="-I%WXINCLUDE%" -DCMAKE_CXX_FLAGS="-EHsc -I%WXINCLUDE%" -DCMAKE_BUILD_TYPE=Release -DwxWidgets_CONFIGURATION=msw32u -DwxWidgets_LIB_DIR="%CURDIR%\wxWidgets-3.2.1\install_win\lib\vc_x64_dll" -DwxWidgets_ROOT_DIR="%CURDIR%\wxWidgets-3.2.1\install_win" -DwxLua_LUA_LIBRARY_BUILD_SHARED=ON -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
if NOT ["%errorlevel%"]==["0"] (
    exit /b %errorlevel%
)
cmake --build . --parallel %NUMBER_OF_PROCESSORS%
if NOT ["%errorlevel%"]==["0"] (
    exit /b %errorlevel%
)
cd %CURDIR%
copy wxWidgets-3.2.1\install_win\lib\vc_x64_dll\*.dll wxlua\wxLua\build_win\bin\Debug

