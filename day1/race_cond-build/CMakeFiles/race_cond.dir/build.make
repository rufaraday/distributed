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
CMAKE_SOURCE_DIR = /home/developer/day1/race_cond

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/day1/race_cond-build

# Include any dependencies generated for this target.
include CMakeFiles/race_cond.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/race_cond.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/race_cond.dir/flags.make

CMakeFiles/race_cond.dir/main.cpp.o: CMakeFiles/race_cond.dir/flags.make
CMakeFiles/race_cond.dir/main.cpp.o: /home/developer/day1/race_cond/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/developer/day1/race_cond-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/race_cond.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/race_cond.dir/main.cpp.o -c /home/developer/day1/race_cond/main.cpp

CMakeFiles/race_cond.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/race_cond.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/developer/day1/race_cond/main.cpp > CMakeFiles/race_cond.dir/main.cpp.i

CMakeFiles/race_cond.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/race_cond.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/developer/day1/race_cond/main.cpp -o CMakeFiles/race_cond.dir/main.cpp.s

CMakeFiles/race_cond.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/race_cond.dir/main.cpp.o.requires

CMakeFiles/race_cond.dir/main.cpp.o.provides: CMakeFiles/race_cond.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/race_cond.dir/build.make CMakeFiles/race_cond.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/race_cond.dir/main.cpp.o.provides

CMakeFiles/race_cond.dir/main.cpp.o.provides.build: CMakeFiles/race_cond.dir/main.cpp.o

# Object files for target race_cond
race_cond_OBJECTS = \
"CMakeFiles/race_cond.dir/main.cpp.o"

# External object files for target race_cond
race_cond_EXTERNAL_OBJECTS =

race_cond: CMakeFiles/race_cond.dir/main.cpp.o
race_cond: CMakeFiles/race_cond.dir/build.make
race_cond: CMakeFiles/race_cond.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable race_cond"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/race_cond.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/race_cond.dir/build: race_cond
.PHONY : CMakeFiles/race_cond.dir/build

CMakeFiles/race_cond.dir/requires: CMakeFiles/race_cond.dir/main.cpp.o.requires
.PHONY : CMakeFiles/race_cond.dir/requires

CMakeFiles/race_cond.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/race_cond.dir/cmake_clean.cmake
.PHONY : CMakeFiles/race_cond.dir/clean

CMakeFiles/race_cond.dir/depend:
	cd /home/developer/day1/race_cond-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/day1/race_cond /home/developer/day1/race_cond /home/developer/day1/race_cond-build /home/developer/day1/race_cond-build /home/developer/day1/race_cond-build/CMakeFiles/race_cond.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/race_cond.dir/depend
