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
CMAKE_SOURCE_DIR = /home/developer/distributed/day3/direct

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/distributed/day3/direct/build

# Include any dependencies generated for this target.
include CMakeFiles/direct.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/direct.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/direct.dir/flags.make

CMakeFiles/direct.dir/main.cpp.o: CMakeFiles/direct.dir/flags.make
CMakeFiles/direct.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/developer/distributed/day3/direct/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/direct.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/direct.dir/main.cpp.o -c /home/developer/distributed/day3/direct/main.cpp

CMakeFiles/direct.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/direct.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/developer/distributed/day3/direct/main.cpp > CMakeFiles/direct.dir/main.cpp.i

CMakeFiles/direct.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/direct.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/developer/distributed/day3/direct/main.cpp -o CMakeFiles/direct.dir/main.cpp.s

CMakeFiles/direct.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/direct.dir/main.cpp.o.requires

CMakeFiles/direct.dir/main.cpp.o.provides: CMakeFiles/direct.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/direct.dir/build.make CMakeFiles/direct.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/direct.dir/main.cpp.o.provides

CMakeFiles/direct.dir/main.cpp.o.provides.build: CMakeFiles/direct.dir/main.cpp.o

# Object files for target direct
direct_OBJECTS = \
"CMakeFiles/direct.dir/main.cpp.o"

# External object files for target direct
direct_EXTERNAL_OBJECTS =

direct: CMakeFiles/direct.dir/main.cpp.o
direct: CMakeFiles/direct.dir/build.make
direct: CMakeFiles/direct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable direct"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/direct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/direct.dir/build: direct
.PHONY : CMakeFiles/direct.dir/build

CMakeFiles/direct.dir/requires: CMakeFiles/direct.dir/main.cpp.o.requires
.PHONY : CMakeFiles/direct.dir/requires

CMakeFiles/direct.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/direct.dir/cmake_clean.cmake
.PHONY : CMakeFiles/direct.dir/clean

CMakeFiles/direct.dir/depend:
	cd /home/developer/distributed/day3/direct/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/distributed/day3/direct /home/developer/distributed/day3/direct /home/developer/distributed/day3/direct/build /home/developer/distributed/day3/direct/build /home/developer/distributed/day3/direct/build/CMakeFiles/direct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/direct.dir/depend
