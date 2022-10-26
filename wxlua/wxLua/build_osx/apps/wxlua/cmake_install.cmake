# Install script for directory: /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxlua

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/bin/Debug/wxLua.app" USE_SOURCE_PERMISSIONS)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wxLua.app/Contents/MacOS/wxLua" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wxLua.app/Contents/MacOS/wxLua")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/lib/Debug/libwxlua-wxosx_cocoaud-3.1.0.0.dylib" "libwxlua-wxosx_cocoaud-3.1.0.0.dylib"
      -change "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/lib/Debug/libwxlua_bind-wxosx_cocoaud-3.1.0.0.dylib" "libwxlua_bind-wxosx_cocoaud-3.1.0.0.dylib"
      -change "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib" "libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib"
      -change "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib" "libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib"
      -change "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/lib/Debug/libwxlua_lua52-wxosx_cocoaud-3.1.0.0.dylib" "libwxlua_lua52-wxosx_cocoaud-3.1.0.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wxLua.app/Contents/MacOS/wxLua")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wxLua.app/Contents/MacOS/wxLua")
  endif()
endif()

