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
include apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/progress.make

# Include the compile flags for this target's objects.
include apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/flags.make

bin/Debug/wxLuaFreeze.app/Contents/Resources/wxlualogo.icns: ../art/wxlualogo.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content bin/Debug/wxLuaFreeze.app/Contents/Resources/wxlualogo.icns"
	$(CMAKE_COMMAND) -E copy /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/art/wxlualogo.icns bin/Debug/wxLuaFreeze.app/Contents/Resources/wxlualogo.icns

apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o: apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/flags.make
apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o: ../apps/wxluafreeze/wxluafreeze.cpp
apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o: apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o -MF CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o.d -o CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o -c /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluafreeze/wxluafreeze.cpp

apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.i"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluafreeze/wxluafreeze.cpp > CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.i

apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.s"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluafreeze/wxluafreeze.cpp -o CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.s

# Object files for target wxLuaFreeze
wxLuaFreeze_OBJECTS = \
"CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o"

# External object files for target wxLuaFreeze
wxLuaFreeze_EXTERNAL_OBJECTS =

bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/wxluafreeze.cpp.o
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/build.make
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: lib/Debug/libwxlua_debugger-wxosx_cocoaud-3.1.0.0.dylib
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: lib/Debug/libwxlua_debug-wxosx_cocoaud-3.1.0.0.dylib
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: lib/Debug/libwxlua_bind-wxosx_cocoaud-3.1.0.0.dylib
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: lib/Debug/libwxlua-wxosx_cocoaud-3.1.0.0.dylib
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: lib/Debug/libwxlua_lua52-wxosx_cocoaud-3.1.0.0.dylib
bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze: apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze"
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wxLuaFreeze.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/build: bin/Debug/wxLuaFreeze.app/Contents/MacOS/wxLuaFreeze
apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/build: bin/Debug/wxLuaFreeze.app/Contents/Resources/wxlualogo.icns
.PHONY : apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/build

apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/clean:
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze && $(CMAKE_COMMAND) -P CMakeFiles/wxLuaFreeze.dir/cmake_clean.cmake
.PHONY : apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/clean

apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/depend:
	cd /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/apps/wxluafreeze /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze /Users/paul/Documents/Source/wxWidgets/wxlua/wxLua/build_osx/apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/wxluafreeze/CMakeFiles/wxLuaFreeze.dir/depend

