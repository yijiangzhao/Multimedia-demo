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
CMAKE_BINARY_DIR = /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug

# Include any dependencies generated for this target.
include bmgui/CMakeFiles/videoui_demo.dir/depend.make

# Include the progress variables for this target.
include bmgui/CMakeFiles/videoui_demo.dir/progress.make

# Include the compile flags for this target's objects.
include bmgui/CMakeFiles/videoui_demo.dir/flags.make

bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o: bmgui/CMakeFiles/videoui_demo.dir/flags.make
bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o: ../bmgui/bmgui_unittest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && /gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmgui/bmgui_unittest.cpp

bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && /gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmgui/bmgui_unittest.cpp > CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.i

bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && /gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmgui/bmgui_unittest.cpp -o CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.s

bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.requires:

.PHONY : bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.requires

bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.provides: bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.requires
	$(MAKE) -f bmgui/CMakeFiles/videoui_demo.dir/build.make bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.provides.build
.PHONY : bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.provides

bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.provides.build: bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o


bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o: bmgui/CMakeFiles/videoui_demo.dir/flags.make
bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o: bmgui/videoui_demo_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && /gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o -c /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui/videoui_demo_autogen/mocs_compilation.cpp

bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.i"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && /gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui/videoui_demo_autogen/mocs_compilation.cpp > CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.i

bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.s"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && /gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui/videoui_demo_autogen/mocs_compilation.cpp -o CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.s

bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.requires:

.PHONY : bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.requires

bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.provides: bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.requires
	$(MAKE) -f bmgui/CMakeFiles/videoui_demo.dir/build.make bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.provides.build
.PHONY : bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.provides

bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.provides.build: bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o


# Object files for target videoui_demo
videoui_demo_OBJECTS = \
"CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o" \
"CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o"

# External object files for target videoui_demo
videoui_demo_EXTERNAL_OBJECTS =

bin/videoui_demo: bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o
bin/videoui_demo: bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o
bin/videoui_demo: bmgui/CMakeFiles/videoui_demo.dir/build.make
bin/videoui_demo: lib/libbmgui.so
bin/videoui_demo: /opt/QT5/lib/libQt5Widgets.so.5.14.0
bin/videoui_demo: /opt/QT5/lib/libQt5Gui.so.5.14.0
bin/videoui_demo: /opt/QT5/lib/libQt5Core.so.5.14.0
bin/videoui_demo: bmgui/CMakeFiles/videoui_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/videoui_demo"
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/videoui_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bmgui/CMakeFiles/videoui_demo.dir/build: bin/videoui_demo

.PHONY : bmgui/CMakeFiles/videoui_demo.dir/build

bmgui/CMakeFiles/videoui_demo.dir/requires: bmgui/CMakeFiles/videoui_demo.dir/bmgui_unittest.cpp.o.requires
bmgui/CMakeFiles/videoui_demo.dir/requires: bmgui/CMakeFiles/videoui_demo.dir/videoui_demo_autogen/mocs_compilation.cpp.o.requires

.PHONY : bmgui/CMakeFiles/videoui_demo.dir/requires

bmgui/CMakeFiles/videoui_demo.dir/clean:
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui && $(CMAKE_COMMAND) -P CMakeFiles/videoui_demo.dir/cmake_clean.cmake
.PHONY : bmgui/CMakeFiles/videoui_demo.dir/clean

bmgui/CMakeFiles/videoui_demo.dir/depend:
	cd /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/bmgui /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui /home/ente/sophonsdk_v3.0.0/examples-3.0.0/visualPerception/cmake-build-debug/bmgui/CMakeFiles/videoui_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bmgui/CMakeFiles/videoui_demo.dir/depend

