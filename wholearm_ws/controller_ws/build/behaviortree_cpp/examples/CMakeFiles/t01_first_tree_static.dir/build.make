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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp

# Include any dependencies generated for this target.
include examples/CMakeFiles/t01_first_tree_static.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/t01_first_tree_static.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/t01_first_tree_static.dir/flags.make

examples/CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.o: examples/CMakeFiles/t01_first_tree_static.dir/flags.make
examples/CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.o: /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP/examples/t01_build_your_first_tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.o"
	cd /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.o -c /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP/examples/t01_build_your_first_tree.cpp

examples/CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.i"
	cd /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP/examples/t01_build_your_first_tree.cpp > CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.i

examples/CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.s"
	cd /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP/examples/t01_build_your_first_tree.cpp -o CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.s

# Object files for target t01_first_tree_static
t01_first_tree_static_OBJECTS = \
"CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.o"

# External object files for target t01_first_tree_static
t01_first_tree_static_EXTERNAL_OBJECTS =

/home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static: examples/CMakeFiles/t01_first_tree_static.dir/t01_build_your_first_tree.cpp.o
/home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static: examples/CMakeFiles/t01_first_tree_static.dir/build.make
/home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static: sample_nodes/lib/libbt_sample_nodes.a
/home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static: /home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/libbehaviortree_cpp.so
/home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static: examples/CMakeFiles/t01_first_tree_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static"
	cd /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/t01_first_tree_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/t01_first_tree_static.dir/build: /home/emprise/wholearm_ws/controller_ws/devel/.private/behaviortree_cpp/lib/behaviortree_cpp/t01_first_tree_static

.PHONY : examples/CMakeFiles/t01_first_tree_static.dir/build

examples/CMakeFiles/t01_first_tree_static.dir/clean:
	cd /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples && $(CMAKE_COMMAND) -P CMakeFiles/t01_first_tree_static.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/t01_first_tree_static.dir/clean

examples/CMakeFiles/t01_first_tree_static.dir/depend:
	cd /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP /home/emprise/wholearm_ws/controller_ws/src/BehaviorTree.CPP/examples /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples /home/emprise/wholearm_ws/controller_ws/build/behaviortree_cpp/examples/CMakeFiles/t01_first_tree_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/t01_first_tree_static.dir/depend

