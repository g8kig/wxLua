#!/bin/bash

set -e
pushd wxWidgets-3.2.1
[ -d build_linux ]   && rm -r build_linux
[ -d install_linux ] && rm -r install_linux
mkdir build_linux
mkdir install_linux 
pushd build_linux
cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release -DCMAKE_INSTALL_PREFIX=$(pwd)/../install_linux \
    -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON \
    -DwxBUILD_TOOLKIT=gtk3 ..
cmake --build . --target install
popd
popd
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

