
setlocal
set CURDIR=%cd%
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

