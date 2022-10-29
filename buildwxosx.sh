#!/bin/bash

set -e
pushd wxWidgets-3.2.1
[ -d build_macos ]   && rm -r build_macos
[ -d install_macos ] && rm -r install_macos
mkdir build_macos
mkdir install_macos 
pushd build_macos
cmake -G"Xcode" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$(pwd)/../install_macos -DCMAKE_INSTALL_DEPLOYMENT_TARGET=10.10 \
    -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk \
    -DwxBUILD_CXX_STANDARD=11 -DwxBUILD_INSTALL=ON -DwxBUILD_SAMPLES=OFF -DwxBUILD_SHARED=ON -DwxUSE_LIBMSPACK=NO -DwxUSE_LIBTIFF=OFF \
    -DwxBUILD_TOOLKIT=osx_cocoa ..
xcodebuild install
popd
popd
pushd wxlua/wxLua
[ -d build_macos ] && rm -r build_macos
mkdir build_macos
pushd build_macos
cmake -G"Xcode" -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/install_macos/bin/wx-config \
    -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON \
    -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
xcodebuild
popd
popd

