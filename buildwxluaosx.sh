#!/bin/bash

set -e
pushd wxlua/wxLua
[ -d build_macos ] && rm -r build_macos
mkdir build_macos
pushd build_macos
set WXINCLUDE=$(pwd)/../../../wxWidgets-3.2.1/include
cmake -G"Xcode" -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_macos/bin/wx-config \
    -DCMAKE_C_FLAGS=-I$WXINCLUDE -DCMAKE_CXX_FLAGS=-I$WXINCLUDE \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON \
    -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
xcodebuild
popd
popd