#!/bin/bash

set -e
pushd wxWidgets-3.2.1
[ -d build_linux ]   && rm -r build_linux
[ -d install_linux ] && rm -r install_linux
mkdir build_linux
mkdir install_linux 
pushd build_linux
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$(pwd)/../install_linux \
    -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON \
    -DwxBUILD_TOOLKIT=gtk3 ..
ninja install
popd
popd
pushd wxlua/wxLua
[ -d build_linux ] && rm -r build_linux
mkdir build_linux
pushd build_linux
cmake -G"Ninja" -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_linux/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON \
    -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
ninja
popd
popd

