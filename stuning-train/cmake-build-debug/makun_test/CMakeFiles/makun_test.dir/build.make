# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /home/marcie/clion-2018.2.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/marcie/clion-2018.2.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marcie/libprocess-start

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marcie/libprocess-start/cmake-build-debug

# Include any dependencies generated for this target.
include makun_test/CMakeFiles/makun_test.dir/depend.make

# Include the progress variables for this target.
include makun_test/CMakeFiles/makun_test.dir/progress.make

# Include the compile flags for this target's objects.
include makun_test/CMakeFiles/makun_test.dir/flags.make

makun_test/CMakeFiles/makun_test.dir/rmdir_tests.cpp.o: makun_test/CMakeFiles/makun_test.dir/flags.make
makun_test/CMakeFiles/makun_test.dir/rmdir_tests.cpp.o: ../makun_test/rmdir_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcie/libprocess-start/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object makun_test/CMakeFiles/makun_test.dir/rmdir_tests.cpp.o"
	cd /home/marcie/libprocess-start/cmake-build-debug/makun_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/makun_test.dir/rmdir_tests.cpp.o -c /home/marcie/libprocess-start/makun_test/rmdir_tests.cpp

makun_test/CMakeFiles/makun_test.dir/rmdir_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/makun_test.dir/rmdir_tests.cpp.i"
	cd /home/marcie/libprocess-start/cmake-build-debug/makun_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcie/libprocess-start/makun_test/rmdir_tests.cpp > CMakeFiles/makun_test.dir/rmdir_tests.cpp.i

makun_test/CMakeFiles/makun_test.dir/rmdir_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/makun_test.dir/rmdir_tests.cpp.s"
	cd /home/marcie/libprocess-start/cmake-build-debug/makun_test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcie/libprocess-start/makun_test/rmdir_tests.cpp -o CMakeFiles/makun_test.dir/rmdir_tests.cpp.s

# Object files for target makun_test
makun_test_OBJECTS = \
"CMakeFiles/makun_test.dir/rmdir_tests.cpp.o"

# External object files for target makun_test
makun_test_EXTERNAL_OBJECTS =

makun_test/makun_test: makun_test/CMakeFiles/makun_test.dir/rmdir_tests.cpp.o
makun_test/makun_test: makun_test/CMakeFiles/makun_test.dir/build.make
makun_test/makun_test: makun_test/CMakeFiles/makun_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marcie/libprocess-start/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable makun_test"
	cd /home/marcie/libprocess-start/cmake-build-debug/makun_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/makun_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
makun_test/CMakeFiles/makun_test.dir/build: makun_test/makun_test

.PHONY : makun_test/CMakeFiles/makun_test.dir/build

makun_test/CMakeFiles/makun_test.dir/clean:
	cd /home/marcie/libprocess-start/cmake-build-debug/makun_test && $(CMAKE_COMMAND) -P CMakeFiles/makun_test.dir/cmake_clean.cmake
.PHONY : makun_test/CMakeFiles/makun_test.dir/clean

makun_test/CMakeFiles/makun_test.dir/depend:
	cd /home/marcie/libprocess-start/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcie/libprocess-start /home/marcie/libprocess-start/makun_test /home/marcie/libprocess-start/cmake-build-debug /home/marcie/libprocess-start/cmake-build-debug/makun_test /home/marcie/libprocess-start/cmake-build-debug/makun_test/CMakeFiles/makun_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : makun_test/CMakeFiles/makun_test.dir/depend

