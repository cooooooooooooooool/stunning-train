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
CMAKE_SOURCE_DIR = /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build

# Include any dependencies generated for this target.
include CMakeFiles/http_parser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/http_parser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/http_parser.dir/flags.make

CMakeFiles/http_parser.dir/http_parser.c.o: CMakeFiles/http_parser.dir/flags.make
CMakeFiles/http_parser.dir/http_parser.c.o: /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2/http_parser.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/http_parser.dir/http_parser.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/http_parser.dir/http_parser.c.o   -c /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2/http_parser.c

CMakeFiles/http_parser.dir/http_parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http_parser.dir/http_parser.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2/http_parser.c > CMakeFiles/http_parser.dir/http_parser.c.i

CMakeFiles/http_parser.dir/http_parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http_parser.dir/http_parser.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2/http_parser.c -o CMakeFiles/http_parser.dir/http_parser.c.s

CMakeFiles/http_parser.dir/http_parser.c.o.requires:

.PHONY : CMakeFiles/http_parser.dir/http_parser.c.o.requires

CMakeFiles/http_parser.dir/http_parser.c.o.provides: CMakeFiles/http_parser.dir/http_parser.c.o.requires
	$(MAKE) -f CMakeFiles/http_parser.dir/build.make CMakeFiles/http_parser.dir/http_parser.c.o.provides.build
.PHONY : CMakeFiles/http_parser.dir/http_parser.c.o.provides

CMakeFiles/http_parser.dir/http_parser.c.o.provides.build: CMakeFiles/http_parser.dir/http_parser.c.o


# Object files for target http_parser
http_parser_OBJECTS = \
"CMakeFiles/http_parser.dir/http_parser.c.o"

# External object files for target http_parser
http_parser_EXTERNAL_OBJECTS =

libhttp_parser.a: CMakeFiles/http_parser.dir/http_parser.c.o
libhttp_parser.a: CMakeFiles/http_parser.dir/build.make
libhttp_parser.a: CMakeFiles/http_parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libhttp_parser.a"
	$(CMAKE_COMMAND) -P CMakeFiles/http_parser.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http_parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/http_parser.dir/build: libhttp_parser.a

.PHONY : CMakeFiles/http_parser.dir/build

CMakeFiles/http_parser.dir/requires: CMakeFiles/http_parser.dir/http_parser.c.o.requires

.PHONY : CMakeFiles/http_parser.dir/requires

CMakeFiles/http_parser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/http_parser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/http_parser.dir/clean

CMakeFiles/http_parser.dir/depend:
	cd /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2 /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2 /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build /home/wqn/libprocess-start/build/3rdparty/http_parser-2.6.2/src/http_parser-2.6.2-build/CMakeFiles/http_parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/http_parser.dir/depend

