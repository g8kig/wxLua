#!/bin/bash

set -e
pushd wxlua/wxLua
rm -rf build_linux
mkdir build_linux
pushd build_linux
cmake -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/linux_build/lib/wx/config/gtk3-unicode-3.2 -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
make -j2
popd
popd

