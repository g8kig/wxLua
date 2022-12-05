#!/bin/bash

set -e
pushd wxWidgets-3.2.1
[ -d build_macos ]   && rm -r build_macos
[ -d install_macos ] && rm -r install_macos
mkdir build_macos
mkdir install_macos 
pushd build_macos
cmake -G"Xcode" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release -DCMAKE_INSTALL_PREFIX=$(pwd)/../install_macos \
    -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
    -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON -DwxUSE_LIBMSPACK=NO -DwxUSE_LIBTIFF=OFF \
    -DwxBUILD_TOOLKIT=osx_cocoa ..
cmake --build . --target install
popd
popd
pushd wxlua/wxLua
[ -d build_macos ] && rm -r build_macos
mkdir build_macos
pushd build_macos
mkdir -p $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/Debug
mkdir -p $(pwd)/../../../wxWidgets-3.2.1/install_macos/lib/Release
cmake -G"Xcode" \
    -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_macos/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 \
    -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release -DBUILD_SHARED_LIBS=FALSE \
    -DCMAKE_SKIP_RPATH=TRUE -DCMAKE_CXX_FLAGS="-std=c++11 -stdlib=libc++" \
    -DCMAKE_OSX_ARCHITECTURES=$MACOSX_ARCH -DCMAKE_OSX_DEPLOYMENT_TARGET=$MACOSX_VERSION ..
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
