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
CMAKE_SOURCE_DIR = /home/developer/day2/boost_asio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/day2/boost_asio/build

# Utility rule file for libs.

# Include the progress variables for this target.
include CMakeFiles/libs.dir/progress.make

CMakeFiles/libs:

libs: CMakeFiles/libs
libs: CMakeFiles/libs.dir/build.make
.PHONY : libs

# Rule to build all files generated by this target.
CMakeFiles/libs.dir/build: libs
.PHONY : CMakeFiles/libs.dir/build

CMakeFiles/libs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libs.dir/clean

CMakeFiles/libs.dir/depend:
	cd /home/developer/day2/boost_asio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/day2/boost_asio /home/developer/day2/boost_asio /home/developer/day2/boost_asio/build /home/developer/day2/boost_asio/build /home/developer/day2/boost_asio/build/CMakeFiles/libs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libs.dir/depend

