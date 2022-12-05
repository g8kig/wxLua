#!/bin/bash

set -e
pushd wxlua/wxLua
pushd build_macos
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
