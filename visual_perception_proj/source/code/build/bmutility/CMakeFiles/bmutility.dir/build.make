# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build

# Include any dependencies generated for this target.
include bmutility/CMakeFiles/bmutility.dir/depend.make

# Include the progress variables for this target.
include bmutility/CMakeFiles/bmutility.dir/progress.make

# Include the compile flags for this target's objects.
include bmutility/CMakeFiles/bmutility.dir/flags.make

bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o: ../bmutility/bmutility_pool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/bmutility_pool.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_pool.cpp

bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/bmutility_pool.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_pool.cpp > CMakeFiles/bmutility.dir/bmutility_pool.cpp.i

bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/bmutility_pool.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_pool.cpp -o CMakeFiles/bmutility.dir/bmutility_pool.cpp.s

bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o


bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o: ../bmutility/stream_sei.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/stream_sei.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_sei.cpp

bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/stream_sei.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_sei.cpp > CMakeFiles/bmutility.dir/stream_sei.cpp.i

bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/stream_sei.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_sei.cpp -o CMakeFiles/bmutility.dir/stream_sei.cpp.s

bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o


bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o: ../bmutility/stream_demuxer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/stream_demuxer.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_demuxer.cpp

bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/stream_demuxer.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_demuxer.cpp > CMakeFiles/bmutility.dir/stream_demuxer.cpp.i

bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/stream_demuxer.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_demuxer.cpp -o CMakeFiles/bmutility.dir/stream_demuxer.cpp.s

bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o


bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o: ../bmutility/stream_decode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/stream_decode.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_decode.cpp

bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/stream_decode.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_decode.cpp > CMakeFiles/bmutility.dir/stream_decode.cpp.i

bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/stream_decode.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_decode.cpp -o CMakeFiles/bmutility.dir/stream_decode.cpp.s

bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o


bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o: ../bmutility/stream_cvdecode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_cvdecode.cpp

bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/stream_cvdecode.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_cvdecode.cpp > CMakeFiles/bmutility.dir/stream_cvdecode.cpp.i

bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/stream_cvdecode.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/stream_cvdecode.cpp -o CMakeFiles/bmutility.dir/stream_cvdecode.cpp.s

bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o


bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o: ../bmutility/bmutility_timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/bmutility_timer.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_timer.cpp

bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/bmutility_timer.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_timer.cpp > CMakeFiles/bmutility.dir/bmutility_timer.cpp.i

bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/bmutility_timer.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_timer.cpp -o CMakeFiles/bmutility.dir/bmutility_timer.cpp.s

bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o


bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o: bmutility/CMakeFiles/bmutility.dir/flags.make
bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o: ../bmutility/bmutility_string.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bmutility.dir/bmutility_string.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_string.cpp

bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bmutility.dir/bmutility_string.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_string.cpp > CMakeFiles/bmutility.dir/bmutility_string.cpp.i

bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bmutility.dir/bmutility_string.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility/bmutility_string.cpp -o CMakeFiles/bmutility.dir/bmutility_string.cpp.s

bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.requires:

.PHONY : bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.requires

bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.provides: bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.requires
	$(MAKE) -f bmutility/CMakeFiles/bmutility.dir/build.make bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.provides.build
.PHONY : bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.provides

bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.provides.build: bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o


# Object files for target bmutility
bmutility_OBJECTS = \
"CMakeFiles/bmutility.dir/bmutility_pool.cpp.o" \
"CMakeFiles/bmutility.dir/stream_sei.cpp.o" \
"CMakeFiles/bmutility.dir/stream_demuxer.cpp.o" \
"CMakeFiles/bmutility.dir/stream_decode.cpp.o" \
"CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o" \
"CMakeFiles/bmutility.dir/bmutility_timer.cpp.o" \
"CMakeFiles/bmutility.dir/bmutility_string.cpp.o"

# External object files for target bmutility
bmutility_EXTERNAL_OBJECTS =

lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/build.make
lib/libbmutility.a: bmutility/CMakeFiles/bmutility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library ../lib/libbmutility.a"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && $(CMAKE_COMMAND) -P CMakeFiles/bmutility.dir/cmake_clean_target.cmake
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bmutility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bmutility/CMakeFiles/bmutility.dir/build: lib/libbmutility.a

.PHONY : bmutility/CMakeFiles/bmutility.dir/build

bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/bmutility_pool.cpp.o.requires
bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/stream_sei.cpp.o.requires
bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/stream_demuxer.cpp.o.requires
bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/stream_decode.cpp.o.requires
bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/stream_cvdecode.cpp.o.requires
bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/bmutility_timer.cpp.o.requires
bmutility/CMakeFiles/bmutility.dir/requires: bmutility/CMakeFiles/bmutility.dir/bmutility_string.cpp.o.requires

.PHONY : bmutility/CMakeFiles/bmutility.dir/requires

bmutility/CMakeFiles/bmutility.dir/clean:
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility && $(CMAKE_COMMAND) -P CMakeFiles/bmutility.dir/cmake_clean.cmake
.PHONY : bmutility/CMakeFiles/bmutility.dir/clean

bmutility/CMakeFiles/bmutility.dir/depend:
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmutility /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/bmutility/CMakeFiles/bmutility.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bmutility/CMakeFiles/bmutility.dir/depend

