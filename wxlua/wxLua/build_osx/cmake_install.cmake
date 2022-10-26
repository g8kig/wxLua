# Install script for directory: /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/wxlua/wxLuaConfig.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/wxlua/wxLuaConfig.cmake"
         "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles/Export/share/wxlua/wxLuaConfig.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/wxlua/wxLuaConfig-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/wxlua/wxLuaConfig.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua" TYPE FILE FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles/Export/share/wxlua/wxLuaConfig.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua" TYPE FILE FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles/Export/share/wxlua/wxLuaConfig-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua/doc/wxLua" TYPE DIRECTORY FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/docs/" FILES_MATCHING REGEX "/[^/]*\\.md$" REGEX "/[^/]*\\.html$" REGEX "/cvs$" EXCLUDE REGEX "/\\.svn$" EXCLUDE REGEX "/doxygen$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua/samples" TYPE DIRECTORY FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/samples/" REGEX "/cvs$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wxlua/wxbind/include" TYPE FILE FILES
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxadv_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxadv_wxladv.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxaui_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxbase_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxbinddefs.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxcore_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxcore_wxlcore.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxgl_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxhtml_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxhtml_wxlhtml.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxmedia_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxnet_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxpropgrid_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxrichtext_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxstc_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxwebview_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxxml_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/include/wxxrc_bind.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua/bindings" TYPE FILE FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/bindings/wxwidgets/wx_datatypes.lua")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wxlua/lua" TYPE FILE FILES
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/lua-5.2/src/lauxlib.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/lua-5.2/src/luaconf.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/lua-5.2/src/lua.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/lua-5.2/src/lualib.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wxlua" TYPE FILE FILES
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/atomic.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/sharedptr.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlbind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlcallb.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlconsole.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxldefs.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxllua.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlobject.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlstate.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlua.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlua_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/wxlversion.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxbind/setup/wxluasetup.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wxlua/debug" TYPE FILE FILES
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxldebug.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxlstack.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxluadebugdefs.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wxlua/debugger" TYPE FILE FILES
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldserv.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldtarg.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxlsock.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxluadebugger_bind.h"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxluadebuggerdefs.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua/apps/wxluacan" TYPE FILE FILES "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluacan/scripts/incircles.lua")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wxlua/apps/wxluafreeze" TYPE FILE FILES
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluafreeze/readme.txt"
    "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluafreeze/wxluafreeze.lua"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/cmake_install.cmake")
  include("/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/cmake_install.cmake")
  include("/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/bindings/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
