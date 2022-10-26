#!/bin/bash

set -e
pushd wxWidgets-3.2.1
rm -r linux_build
mkdir linux_build
cd linux_build
../configure --prefix=$(pwd)/linux_build \
                    --with-libiconv \
                    --with-libjpeg \
                    --with-libtiff \
                    --with-libpng \
                    --with-zlib \
                    --with-opengl \
                    --with-gtk \
                    --without-sdl \
                    --enable-aui \
                    --disable-sdltest \
                    --enable-display \
                    --enable-xrc \
                    --enable-graphics_ctx \
                    --enable-compat30 \
                    --enable-cxx11 \
                    --disable-tests \
                    --enable-unicode \
                    --enable-display \
                    --enable-geometry \
                    --enable-optimise \
                    --disable-debugreport \
                    --enable-uiactionsim \
                    --enable-autoidman \
                    --enable-aui \
                    --enable-html \
                    --disable-stl \
                    --enable-richtext
make -j2
make install
popd
pushd wxlua/wxLua
rm -rf build_linux
mkdir build_linux
pushd build_linux
cmake -DwxWidgets_CONFIG_EXECUTABLE=$(pwd)/../../../wxWidgets-3.2.1/linux_build/lib/wx/config/gtk3-unicode-3.2 -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
make -j2
popd
popd

