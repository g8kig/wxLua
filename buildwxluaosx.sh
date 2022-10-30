#!/bin/bash

set -e
pushd wxlua/wxLua
[ -d build_macos ] && rm -r build_macos
mkdir build_macos
pushd build_macos
cmake -G"Xcode" \
    -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_macos/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DCMAKE_OSX_ARCHITECTURES="armv7 arm64"\
    -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
cmake --build .
popd
popd
