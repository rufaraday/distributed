# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/developer/distributed/day3/raytracing-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/distributed/day3/raytracing/build

# Include any dependencies generated for this target.
include CMakeFiles/raytracing-server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/raytracing-server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raytracing-server.dir/flags.make

CMakeFiles/raytracing-server.dir/main.cpp.o: CMakeFiles/raytracing-server.dir/flags.make
CMakeFiles/raytracing-server.dir/main.cpp.o: /home/developer/distributed/day3/raytracing-server/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/developer/distributed/day3/raytracing/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/raytracing-server.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/raytracing-server.dir/main.cpp.o -c /home/developer/distributed/day3/raytracing-server/main.cpp

CMakeFiles/raytracing-server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracing-server.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/developer/distributed/day3/raytracing-server/main.cpp > CMakeFiles/raytracing-server.dir/main.cpp.i

CMakeFiles/raytracing-server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracing-server.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/developer/distributed/day3/raytracing-server/main.cpp -o CMakeFiles/raytracing-server.dir/main.cpp.s

CMakeFiles/raytracing-server.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/raytracing-server.dir/main.cpp.o.requires

CMakeFiles/raytracing-server.dir/main.cpp.o.provides: CMakeFiles/raytracing-server.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/raytracing-server.dir/build.make CMakeFiles/raytracing-server.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/raytracing-server.dir/main.cpp.o.provides

CMakeFiles/raytracing-server.dir/main.cpp.o.provides.build: CMakeFiles/raytracing-server.dir/main.cpp.o

# Object files for target raytracing-server
raytracing__server_OBJECTS = \
"CMakeFiles/raytracing-server.dir/main.cpp.o"

# External object files for target raytracing-server
raytracing__server_EXTERNAL_OBJECTS =

raytracing-server: CMakeFiles/raytracing-server.dir/main.cpp.o
raytracing-server: CMakeFiles/raytracing-server.dir/build.make
raytracing-server: CMakeFiles/raytracing-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable raytracing-server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracing-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raytracing-server.dir/build: raytracing-server
.PHONY : CMakeFiles/raytracing-server.dir/build

CMakeFiles/raytracing-server.dir/requires: CMakeFiles/raytracing-server.dir/main.cpp.o.requires
.PHONY : CMakeFiles/raytracing-server.dir/requires

CMakeFiles/raytracing-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raytracing-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raytracing-server.dir/clean

CMakeFiles/raytracing-server.dir/depend:
	cd /home/developer/distributed/day3/raytracing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/distributed/day3/raytracing-server /home/developer/distributed/day3/raytracing-server /home/developer/distributed/day3/raytracing/build /home/developer/distributed/day3/raytracing/build /home/developer/distributed/day3/raytracing/build/CMakeFiles/raytracing-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/raytracing-server.dir/depend

