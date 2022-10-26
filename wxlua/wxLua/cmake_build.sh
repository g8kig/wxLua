
set -e
rm -rf build_osx
mkdir build_osx
pushd build_osx
cmake -DwxLua_LUA_LIBRARY_BUILD_SHARED=OFF -DwxLua_LUA_LIBRARY_USE_BUILTIN=ON -DwxLua_LUA_LIBRARY_VERSION=5.2 ..
make -j2
popd

