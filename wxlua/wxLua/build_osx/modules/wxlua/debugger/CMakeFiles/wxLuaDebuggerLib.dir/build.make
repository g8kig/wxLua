# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx

# Include any dependencies generated for this target.
include modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/compiler_depend.make

# Include the progress variables for this target.
include modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/progress.make

# Include the compile flags for this target's objects.
include modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/flags.make

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/flags.make
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o: ../modules/wxlua/debugger/dummy.cpp
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o -MF CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o.d -o CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/dummy.cpp

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/dummy.cpp > CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.i

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/dummy.cpp -o CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.s

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/flags.make
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o: ../modules/wxlua/debugger/wxldserv.cpp
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o -MF CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o.d -o CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldserv.cpp

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldserv.cpp > CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.i

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldserv.cpp -o CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.s

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/flags.make
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o: ../modules/wxlua/debugger/wxldtarg.cpp
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o -MF CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o.d -o CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldtarg.cpp

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldtarg.cpp > CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.i

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxldtarg.cpp -o CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.s

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/flags.make
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o: ../modules/wxlua/debugger/wxlsock.cpp
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o -MF CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o.d -o CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxlsock.cpp

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxlsock.cpp > CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.i

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxlsock.cpp -o CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.s

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/flags.make
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o: ../modules/wxlua/debugger/wxluadebugger_bind.cpp
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o -MF CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o.d -o CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxluadebugger_bind.cpp

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxluadebugger_bind.cpp > CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.i

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger/wxluadebugger_bind.cpp -o CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.s

# Object files for target wxLuaDebuggerLib
wxLuaDebuggerLib_OBJECTS = \
"CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o" \
"CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o" \
"CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o" \
"CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o" \
"CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o"

# External object files for target wxLuaDebuggerLib
wxLuaDebuggerLib_EXTERNAL_OBJECTS =

lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/dummy.cpp.o
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldserv.cpp.o
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxldtarg.cpp.o
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxlsock.cpp.o
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/wxluadebugger_bind.cpp.o
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/build.make
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: lib/Debug/libwxlua_bind-wxosx_cocoaud-3.1.0.0.dylib
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: lib/Debug/libwxlua-wxosx_cocoaud-3.1.0.0.dylib
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: lib/Debug/libwxlua_lua52-wxosx_cocoaud-3.1.0.0.dylib
lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library ../../../lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wxLuaDebuggerLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/build: lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib
.PHONY : modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/build

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/clean:
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger && $(CMAKE_COMMAND) -P CMakeFiles/wxLuaDebuggerLib.dir/cmake_clean.cmake
.PHONY : modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/clean

modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/depend:
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debugger /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/wxlua/debugger/CMakeFiles/wxLuaDebuggerLib.dir/depend
