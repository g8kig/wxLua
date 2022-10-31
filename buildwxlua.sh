#!/bin/bash

set -e
pushd wxlua/wxLua
[ -d build_linux ] && rm -r build_linux
mkdir build_linux
pushd build_linux
cmake -G"Ninja" -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_linux/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON \
    -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
cmake --build .
popd
popd

