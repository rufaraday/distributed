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
CMAKE_SOURCE_DIR = /home/developer/distributed/day3/worker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/distributed/day3/worker/build

# Include any dependencies generated for this target.
include CMakeFiles/worker.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/worker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/worker.dir/flags.make

CMakeFiles/worker.dir/smallpt_lib.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/smallpt_lib.cpp.o: ../smallpt_lib.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/developer/distributed/day3/worker/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/worker.dir/smallpt_lib.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/smallpt_lib.cpp.o -c /home/developer/distributed/day3/worker/smallpt_lib.cpp

CMakeFiles/worker.dir/smallpt_lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/smallpt_lib.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/developer/distributed/day3/worker/smallpt_lib.cpp > CMakeFiles/worker.dir/smallpt_lib.cpp.i

CMakeFiles/worker.dir/smallpt_lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/smallpt_lib.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/developer/distributed/day3/worker/smallpt_lib.cpp -o CMakeFiles/worker.dir/smallpt_lib.cpp.s

CMakeFiles/worker.dir/smallpt_lib.cpp.o.requires:
.PHONY : CMakeFiles/worker.dir/smallpt_lib.cpp.o.requires

CMakeFiles/worker.dir/smallpt_lib.cpp.o.provides: CMakeFiles/worker.dir/smallpt_lib.cpp.o.requires
	$(MAKE) -f CMakeFiles/worker.dir/build.make CMakeFiles/worker.dir/smallpt_lib.cpp.o.provides.build
.PHONY : CMakeFiles/worker.dir/smallpt_lib.cpp.o.provides

CMakeFiles/worker.dir/smallpt_lib.cpp.o.provides.build: CMakeFiles/worker.dir/smallpt_lib.cpp.o

# Object files for target worker
worker_OBJECTS = \
"CMakeFiles/worker.dir/smallpt_lib.cpp.o"

# External object files for target worker
worker_EXTERNAL_OBJECTS =

worker: CMakeFiles/worker.dir/smallpt_lib.cpp.o
worker: CMakeFiles/worker.dir/build.make
worker: CMakeFiles/worker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable worker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/worker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/worker.dir/build: worker
.PHONY : CMakeFiles/worker.dir/build

CMakeFiles/worker.dir/requires: CMakeFiles/worker.dir/smallpt_lib.cpp.o.requires
.PHONY : CMakeFiles/worker.dir/requires

CMakeFiles/worker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/worker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/worker.dir/clean

CMakeFiles/worker.dir/depend:
	cd /home/developer/distributed/day3/worker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/distributed/day3/worker /home/developer/distributed/day3/worker /home/developer/distributed/day3/worker/build /home/developer/distributed/day3/worker/build /home/developer/distributed/day3/worker/build/CMakeFiles/worker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/worker.dir/depend
