#!/bin/bash

set -e
pushd wxlua/wxLua
[ -d build_macos ] && rm -r build_macos
mkdir build_macos
pushd build_macos
mkdir -p $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/Debug
mkdir -p $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/Release
cmake -G"Xcode" \
    -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_macos/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.4 \
    -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release -DBUILD_SHARED_LIBS=FALSE \
    -DCMAKE_SKIP_RPATH=TRUE -DCMAKE_CXX_FLAGS="-std=c++11 -stdlib=libc++" \
    -DCMAKE_OSX_ARCHITECTURES="arm64;x86_64" -DCMAKE_OSX_DEPLOYMENT_TARGET="10.13" ..
cmake --build .
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/wxLua.app/Contents/MacOS/
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/wxLuaCan.app/Contents/MacOS/
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/wxLuaFreeze.app/Contents/MacOS/
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/
cp $(pwd)/lib/Release/Release/*.dylib $(pwd)/bin/Release/Release/
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/wxLua.app/Contents/MacOS/wxLua
codesign --force --deep --sign - $(pwd)/bin/Release/Release/wxLua.app
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/wxLuaCan.app/Contents/MacOS/wxLuaCan
codesign --force --deep --sign - $(pwd)/bin/Release/Release/wxLuaCan.app
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze
codesign --force --deep --sign - $(pwd)/bin/Release/Release/wxLuaFreeze.app
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/lua
codesign --force --deep --sign - $(pwd)/bin/Release/Release/lua
for DYLIB in $(ls codesign --force --deep --sign - $(pwd)/bin/Release/Release/*.dylib)
do
	codesign --force --deep --sign - $DYLIB
done
popd
popd
