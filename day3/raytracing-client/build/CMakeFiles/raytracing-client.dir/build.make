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
CMAKE_SOURCE_DIR = /home/developer/distributed/day3/raytracing-client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/distributed/day3/raytracing-client/build

# Include any dependencies generated for this target.
include CMakeFiles/raytracing-client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/raytracing-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raytracing-client.dir/flags.make

CMakeFiles/raytracing-client.dir/main.cpp.o: CMakeFiles/raytracing-client.dir/flags.make
CMakeFiles/raytracing-client.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/developer/distributed/day3/raytracing-client/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/raytracing-client.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/raytracing-client.dir/main.cpp.o -c /home/developer/distributed/day3/raytracing-client/main.cpp

CMakeFiles/raytracing-client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracing-client.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/developer/distributed/day3/raytracing-client/main.cpp > CMakeFiles/raytracing-client.dir/main.cpp.i

CMakeFiles/raytracing-client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracing-client.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/developer/distributed/day3/raytracing-client/main.cpp -o CMakeFiles/raytracing-client.dir/main.cpp.s

CMakeFiles/raytracing-client.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/raytracing-client.dir/main.cpp.o.requires

CMakeFiles/raytracing-client.dir/main.cpp.o.provides: CMakeFiles/raytracing-client.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/raytracing-client.dir/build.make CMakeFiles/raytracing-client.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/raytracing-client.dir/main.cpp.o.provides

CMakeFiles/raytracing-client.dir/main.cpp.o.provides.build: CMakeFiles/raytracing-client.dir/main.cpp.o

# Object files for target raytracing-client
raytracing__client_OBJECTS = \
"CMakeFiles/raytracing-client.dir/main.cpp.o"

# External object files for target raytracing-client
raytracing__client_EXTERNAL_OBJECTS =

raytracing-client: CMakeFiles/raytracing-client.dir/main.cpp.o
raytracing-client: CMakeFiles/raytracing-client.dir/build.make
raytracing-client: CMakeFiles/raytracing-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable raytracing-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracing-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raytracing-client.dir/build: raytracing-client
.PHONY : CMakeFiles/raytracing-client.dir/build

CMakeFiles/raytracing-client.dir/requires: CMakeFiles/raytracing-client.dir/main.cpp.o.requires
.PHONY : CMakeFiles/raytracing-client.dir/requires

CMakeFiles/raytracing-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raytracing-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raytracing-client.dir/clean

CMakeFiles/raytracing-client.dir/depend:
	cd /home/developer/distributed/day3/raytracing-client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/distributed/day3/raytracing-client /home/developer/distributed/day3/raytracing-client /home/developer/distributed/day3/raytracing-client/build /home/developer/distributed/day3/raytracing-client/build /home/developer/distributed/day3/raytracing-client/build/CMakeFiles/raytracing-client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/raytracing-client.dir/depend

