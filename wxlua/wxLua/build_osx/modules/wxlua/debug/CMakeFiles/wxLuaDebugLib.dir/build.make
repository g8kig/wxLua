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
include modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/compiler_depend.make

# Include the progress variables for this target.
include modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/progress.make

# Include the compile flags for this target's objects.
include modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/flags.make

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/flags.make
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o: ../modules/wxlua/debug/dummy.cpp
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o -MF CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o.d -o CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/dummy.cpp

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/dummy.cpp > CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.i

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/dummy.cpp -o CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.s

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/flags.make
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o: ../modules/wxlua/debug/wxldebug.cpp
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o -MF CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o.d -o CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxldebug.cpp

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxldebug.cpp > CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.i

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxldebug.cpp -o CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.s

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/flags.make
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o: ../modules/wxlua/debug/wxlstack.cpp
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o -MF CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o.d -o CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxlstack.cpp

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxlstack.cpp > CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.i

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug/wxlstack.cpp -o CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.s

# Object files for target wxLuaDebugLib
wxLuaDebugLib_OBJECTS = \
"CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o" \
"CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o" \
"CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o"

# External object files for target wxLuaDebugLib
wxLuaDebugLib_EXTERNAL_OBJECTS =

lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/dummy.cpp.o
lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxldebug.cpp.o
lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/wxlstack.cpp.o
lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/build.make
lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: lib/Debug/libwxlua-wxosx_cocoaud-3.1.0.0.dylib
lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: lib/Debug/libwxlua_lua52-wxosx_cocoaud-3.1.0.0.dylib
lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib: modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../../lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wxLuaDebugLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/build: lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib
.PHONY : modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/build

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/clean:
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug && $(CMAKE_COMMAND) -P CMakeFiles/wxLuaDebugLib.dir/cmake_clean.cmake
.PHONY : modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/clean

modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/depend:
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/modules/wxlua/debug /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/wxlua/debug/CMakeFiles/wxLuaDebugLib.dir/depend

