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
include examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/depend.make

# Include the progress variables for this target.
include examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/progress.make

# Include the compile flags for this target's objects.
include examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/flags.make

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/flags.make
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o: ../examples/yolov5_line/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5s_line_demo.dir/main.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/main.cpp

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5s_line_demo.dir/main.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/main.cpp > CMakeFiles/yolov5s_line_demo.dir/main.cpp.i

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5s_line_demo.dir/main.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/main.cpp -o CMakeFiles/yolov5s_line_demo.dir/main.cpp.s

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.requires:

.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.requires

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.provides: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.requires
	$(MAKE) -f examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build.make examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.provides.build
.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.provides

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.provides.build: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o


examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/flags.make
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o: ../examples/yolov5_line/worker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/worker.cpp

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5s_line_demo.dir/worker.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/worker.cpp > CMakeFiles/yolov5s_line_demo.dir/worker.cpp.i

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5s_line_demo.dir/worker.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/worker.cpp -o CMakeFiles/yolov5s_line_demo.dir/worker.cpp.s

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.requires:

.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.requires

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.provides: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.requires
	$(MAKE) -f examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build.make examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.provides.build
.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.provides

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.provides.build: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o


examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/flags.make
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o: ../examples/yolov5_line/yolov5s.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/yolov5s.cpp

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/yolov5s.cpp > CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.i

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/yolov5s.cpp -o CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.s

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.requires:

.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.requires

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.provides: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.requires
	$(MAKE) -f examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build.make examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.provides.build
.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.provides

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.provides.build: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o


examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/flags.make
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o: ../examples/yolov5_line/laneDetection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/laneDetection.cpp

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/laneDetection.cpp > CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.i

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line/laneDetection.cpp -o CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.s

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.requires:

.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.requires

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.provides: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.requires
	$(MAKE) -f examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build.make examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.provides.build
.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.provides

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.provides.build: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o


# Object files for target yolov5s_line_demo
yolov5s_line_demo_OBJECTS = \
"CMakeFiles/yolov5s_line_demo.dir/main.cpp.o" \
"CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o" \
"CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o" \
"CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o"

# External object files for target yolov5s_line_demo
yolov5s_line_demo_EXTERNAL_OBJECTS =

bin/yolov5s_line_demo: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o
bin/yolov5s_line_demo: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o
bin/yolov5s_line_demo: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o
bin/yolov5s_line_demo: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o
bin/yolov5s_line_demo: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build.make
bin/yolov5s_line_demo: lib/libbmutility.a
bin/yolov5s_line_demo: lib/libjsoncpp.a
bin/yolov5s_line_demo: lib/libbmtracker.a
bin/yolov5s_line_demo: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/yolov5s_line_demo"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yolov5s_line_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build: bin/yolov5s_line_demo

.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/build

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/requires: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/main.cpp.o.requires
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/requires: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/worker.cpp.o.requires
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/requires: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/yolov5s.cpp.o.requires
examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/requires: examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/laneDetection.cpp.o.requires

.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/requires

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/clean:
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line && $(CMAKE_COMMAND) -P CMakeFiles/yolov5s_line_demo.dir/cmake_clean.cmake
.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/clean

examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/depend:
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/examples/yolov5_line /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/build/examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/yolov5_line/CMakeFiles/yolov5s_line_demo.dir/depend

