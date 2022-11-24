#!/bin/bash

set -e
pushd wxlua/wxLua
pushd build_macos
mkdir -p $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/Debug
mkdir -p $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/Release
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/wxLua.app/Contents/MacOS/
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/wxLuaCan.app/Contents/MacOS/
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/wxLuaFreeze.app/Contents/MacOS/
cp $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/*.dylib $(pwd)/bin/Release/Release/
cp $(pwd)/lib/Release/Release/*.dylib $(pwd)/bin/Release/Release/
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/wxLua.app/Contents/MacOS/wxLua
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/wxLuaCan.app/Contents/MacOS/wxLuaCan
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze
install_name_tool -add_rpath @executable_path/. $(pwd)/bin/Release/Release/lua
popd
popd
