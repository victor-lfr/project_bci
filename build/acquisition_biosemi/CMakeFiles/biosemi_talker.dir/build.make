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
CMAKE_SOURCE_DIR = /home/thomas/project_bci/src/acquisition_biosemi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thomas/project_bci/build/acquisition_biosemi

# Include any dependencies generated for this target.
include CMakeFiles/biosemi_talker.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/biosemi_talker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/biosemi_talker.dir/flags.make

CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o: CMakeFiles/biosemi_talker.dir/flags.make
CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o: /home/thomas/project_bci/src/acquisition_biosemi/src/biosemi_talker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thomas/project_bci/build/acquisition_biosemi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o -c /home/thomas/project_bci/src/acquisition_biosemi/src/biosemi_talker.cpp

CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thomas/project_bci/src/acquisition_biosemi/src/biosemi_talker.cpp > CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.i

CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thomas/project_bci/src/acquisition_biosemi/src/biosemi_talker.cpp -o CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.s

CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.requires:

.PHONY : CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.requires

CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.provides: CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.requires
	$(MAKE) -f CMakeFiles/biosemi_talker.dir/build.make CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.provides.build
.PHONY : CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.provides

CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.provides.build: CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o


# Object files for target biosemi_talker
biosemi_talker_OBJECTS = \
"CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o"

# External object files for target biosemi_talker
biosemi_talker_EXTERNAL_OBJECTS =

/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: CMakeFiles/biosemi_talker.dir/build.make
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/libroscpp.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/librosconsole.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/librostime.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /opt/ros/melodic/lib/libcpp_common.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker: CMakeFiles/biosemi_talker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thomas/project_bci/build/acquisition_biosemi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/biosemi_talker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/biosemi_talker.dir/build: /home/thomas/project_bci/devel/.private/acquisition_biosemi/lib/acquisition_biosemi/biosemi_talker

.PHONY : CMakeFiles/biosemi_talker.dir/build

CMakeFiles/biosemi_talker.dir/requires: CMakeFiles/biosemi_talker.dir/src/biosemi_talker.cpp.o.requires

.PHONY : CMakeFiles/biosemi_talker.dir/requires

CMakeFiles/biosemi_talker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/biosemi_talker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/biosemi_talker.dir/clean

CMakeFiles/biosemi_talker.dir/depend:
	cd /home/thomas/project_bci/build/acquisition_biosemi && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thomas/project_bci/src/acquisition_biosemi /home/thomas/project_bci/src/acquisition_biosemi /home/thomas/project_bci/build/acquisition_biosemi /home/thomas/project_bci/build/acquisition_biosemi /home/thomas/project_bci/build/acquisition_biosemi/CMakeFiles/biosemi_talker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/biosemi_talker.dir/depend

