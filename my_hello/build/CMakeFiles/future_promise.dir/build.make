# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lilelr/open-source/bak_mesos-1.3.2/my_hello

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build

# Include any dependencies generated for this target.
include CMakeFiles/future_promise.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/future_promise.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/future_promise.dir/flags.make

CMakeFiles/future_promise.dir/future_promise.cpp.o: CMakeFiles/future_promise.dir/flags.make
CMakeFiles/future_promise.dir/future_promise.cpp.o: ../future_promise.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/future_promise.dir/future_promise.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/future_promise.dir/future_promise.cpp.o -c /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/future_promise.cpp

CMakeFiles/future_promise.dir/future_promise.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/future_promise.dir/future_promise.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/future_promise.cpp > CMakeFiles/future_promise.dir/future_promise.cpp.i

CMakeFiles/future_promise.dir/future_promise.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/future_promise.dir/future_promise.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/future_promise.cpp -o CMakeFiles/future_promise.dir/future_promise.cpp.s

CMakeFiles/future_promise.dir/future_promise.cpp.o.requires:

.PHONY : CMakeFiles/future_promise.dir/future_promise.cpp.o.requires

CMakeFiles/future_promise.dir/future_promise.cpp.o.provides: CMakeFiles/future_promise.dir/future_promise.cpp.o.requires
	$(MAKE) -f CMakeFiles/future_promise.dir/build.make CMakeFiles/future_promise.dir/future_promise.cpp.o.provides.build
.PHONY : CMakeFiles/future_promise.dir/future_promise.cpp.o.provides

CMakeFiles/future_promise.dir/future_promise.cpp.o.provides.build: CMakeFiles/future_promise.dir/future_promise.cpp.o


# Object files for target future_promise
future_promise_OBJECTS = \
"CMakeFiles/future_promise.dir/future_promise.cpp.o"

# External object files for target future_promise
future_promise_EXTERNAL_OBJECTS =

future_promise: CMakeFiles/future_promise.dir/future_promise.cpp.o
future_promise: CMakeFiles/future_promise.dir/build.make
future_promise: proto/libfoo.a
future_promise: /usr/local/lib/libprotobuf.so
future_promise: CMakeFiles/future_promise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable future_promise"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/future_promise.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/future_promise.dir/build: future_promise

.PHONY : CMakeFiles/future_promise.dir/build

CMakeFiles/future_promise.dir/requires: CMakeFiles/future_promise.dir/future_promise.cpp.o.requires

.PHONY : CMakeFiles/future_promise.dir/requires

CMakeFiles/future_promise.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/future_promise.dir/cmake_clean.cmake
.PHONY : CMakeFiles/future_promise.dir/clean

CMakeFiles/future_promise.dir/depend:
	cd /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lilelr/open-source/bak_mesos-1.3.2/my_hello /home/lilelr/open-source/bak_mesos-1.3.2/my_hello /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build /home/lilelr/open-source/bak_mesos-1.3.2/my_hello/build/CMakeFiles/future_promise.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/future_promise.dir/depend

