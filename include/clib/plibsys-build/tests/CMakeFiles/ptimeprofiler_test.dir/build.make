# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.16.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.16.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lind/Desktop/clib/plibsys

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lind/Desktop/clib/plibsys-build

# Include any dependencies generated for this target.
include tests/CMakeFiles/ptimeprofiler_test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/ptimeprofiler_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/ptimeprofiler_test.dir/flags.make

tests/CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.o: tests/CMakeFiles/ptimeprofiler_test.dir/flags.make
tests/CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.o: /Users/lind/Desktop/clib/plibsys/tests/ptimeprofiler_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lind/Desktop/clib/plibsys-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.o"
	cd /Users/lind/Desktop/clib/plibsys-build/tests && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.o -c /Users/lind/Desktop/clib/plibsys/tests/ptimeprofiler_test.cpp

tests/CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.i"
	cd /Users/lind/Desktop/clib/plibsys-build/tests && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lind/Desktop/clib/plibsys/tests/ptimeprofiler_test.cpp > CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.i

tests/CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.s"
	cd /Users/lind/Desktop/clib/plibsys-build/tests && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lind/Desktop/clib/plibsys/tests/ptimeprofiler_test.cpp -o CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.s

# Object files for target ptimeprofiler_test
ptimeprofiler_test_OBJECTS = \
"CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.o"

# External object files for target ptimeprofiler_test
ptimeprofiler_test_EXTERNAL_OBJECTS =

ptimeprofiler_test: tests/CMakeFiles/ptimeprofiler_test.dir/ptimeprofiler_test.cpp.o
ptimeprofiler_test: tests/CMakeFiles/ptimeprofiler_test.dir/build.make
ptimeprofiler_test: libplibsys.0.dylib
ptimeprofiler_test: tests/CMakeFiles/ptimeprofiler_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lind/Desktop/clib/plibsys-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../ptimeprofiler_test"
	cd /Users/lind/Desktop/clib/plibsys-build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ptimeprofiler_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/ptimeprofiler_test.dir/build: ptimeprofiler_test

.PHONY : tests/CMakeFiles/ptimeprofiler_test.dir/build

tests/CMakeFiles/ptimeprofiler_test.dir/clean:
	cd /Users/lind/Desktop/clib/plibsys-build/tests && $(CMAKE_COMMAND) -P CMakeFiles/ptimeprofiler_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/ptimeprofiler_test.dir/clean

tests/CMakeFiles/ptimeprofiler_test.dir/depend:
	cd /Users/lind/Desktop/clib/plibsys-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lind/Desktop/clib/plibsys /Users/lind/Desktop/clib/plibsys/tests /Users/lind/Desktop/clib/plibsys-build /Users/lind/Desktop/clib/plibsys-build/tests /Users/lind/Desktop/clib/plibsys-build/tests/CMakeFiles/ptimeprofiler_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/ptimeprofiler_test.dir/depend

