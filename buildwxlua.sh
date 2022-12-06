#!/bin/bash

set -e
pushd wxlua/wxLua
[ -d build_linux ] && rm -r build_linux
mkdir build_linux
pushd build_linux
cmake -G"Ninja" -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_linux/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DCMAKE_BUILD_TYPE=Release -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON \
    -DBUILD_SHARED_LIBS=TRUE -DwxLua_LUA_LIBRARY_VERSION=5.4 ..
cmake --build .
cmake --build . --target wxLua_doxygen
cp $(pwd)/lib/Release/libwx.so $(pwd)/bin/Release/wx.so 
popd
popd

