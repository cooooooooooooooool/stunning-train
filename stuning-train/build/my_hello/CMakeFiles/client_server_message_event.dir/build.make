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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wqn/libprocess-start

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wqn/libprocess-start/build

# Include any dependencies generated for this target.
include my_hello/CMakeFiles/client_server_message_event.dir/depend.make

# Include the progress variables for this target.
include my_hello/CMakeFiles/client_server_message_event.dir/progress.make

# Include the compile flags for this target's objects.
include my_hello/CMakeFiles/client_server_message_event.dir/flags.make

my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o: my_hello/CMakeFiles/client_server_message_event.dir/flags.make
my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o: ../my_hello/client_server_message_event.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wqn/libprocess-start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o"
	cd /home/wqn/libprocess-start/build/my_hello && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o -c /home/wqn/libprocess-start/my_hello/client_server_message_event.cpp

my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.i"
	cd /home/wqn/libprocess-start/build/my_hello && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wqn/libprocess-start/my_hello/client_server_message_event.cpp > CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.i

my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.s"
	cd /home/wqn/libprocess-start/build/my_hello && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wqn/libprocess-start/my_hello/client_server_message_event.cpp -o CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.s

my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.requires:

.PHONY : my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.requires

my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.provides: my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.requires
	$(MAKE) -f my_hello/CMakeFiles/client_server_message_event.dir/build.make my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.provides.build
.PHONY : my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.provides

my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.provides.build: my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o


# Object files for target client_server_message_event
client_server_message_event_OBJECTS = \
"CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o"

# External object files for target client_server_message_event
client_server_message_event_EXTERNAL_OBJECTS =

my_hello/client_server_message_event: my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o
my_hello/client_server_message_event: my_hello/CMakeFiles/client_server_message_event.dir/build.make
my_hello/client_server_message_event: my_hello/proto/libfoo.a
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libapr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_delta-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_diff-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_subr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libz.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libapr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_delta-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_diff-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_subr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libz.so
my_hello/client_server_message_event: 3rdparty/libprocess/src/libprocess-0.0.1.so.0.0.1
my_hello/client_server_message_event: /usr/local/lib/libprotobuf.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libapr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_delta-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_diff-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_subr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libz.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libapr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_delta-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_diff-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libsvn_subr-1.so
my_hello/client_server_message_event: /usr/lib/x86_64-linux-gnu/libz.so
my_hello/client_server_message_event: my_hello/CMakeFiles/client_server_message_event.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wqn/libprocess-start/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable client_server_message_event"
	cd /home/wqn/libprocess-start/build/my_hello && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client_server_message_event.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_hello/CMakeFiles/client_server_message_event.dir/build: my_hello/client_server_message_event

.PHONY : my_hello/CMakeFiles/client_server_message_event.dir/build

my_hello/CMakeFiles/client_server_message_event.dir/requires: my_hello/CMakeFiles/client_server_message_event.dir/client_server_message_event.cpp.o.requires

.PHONY : my_hello/CMakeFiles/client_server_message_event.dir/requires

my_hello/CMakeFiles/client_server_message_event.dir/clean:
	cd /home/wqn/libprocess-start/build/my_hello && $(CMAKE_COMMAND) -P CMakeFiles/client_server_message_event.dir/cmake_clean.cmake
.PHONY : my_hello/CMakeFiles/client_server_message_event.dir/clean

my_hello/CMakeFiles/client_server_message_event.dir/depend:
	cd /home/wqn/libprocess-start/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wqn/libprocess-start /home/wqn/libprocess-start/my_hello /home/wqn/libprocess-start/build /home/wqn/libprocess-start/build/my_hello /home/wqn/libprocess-start/build/my_hello/CMakeFiles/client_server_message_event.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_hello/CMakeFiles/client_server_message_event.dir/depend

