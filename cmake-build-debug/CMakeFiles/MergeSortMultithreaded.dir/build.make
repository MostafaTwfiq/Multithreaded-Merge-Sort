# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/mostafa/Downloads/clion-2021.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/mostafa/Downloads/clion-2021.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mostafa/CLionProjects/Multithreaded-Merge-Sort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MergeSortMultithreaded.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/MergeSortMultithreaded.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MergeSortMultithreaded.dir/flags.make

CMakeFiles/MergeSortMultithreaded.dir/main.c.o: CMakeFiles/MergeSortMultithreaded.dir/flags.make
CMakeFiles/MergeSortMultithreaded.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MergeSortMultithreaded.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MergeSortMultithreaded.dir/main.c.o -c /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/main.c

CMakeFiles/MergeSortMultithreaded.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MergeSortMultithreaded.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/main.c > CMakeFiles/MergeSortMultithreaded.dir/main.c.i

CMakeFiles/MergeSortMultithreaded.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MergeSortMultithreaded.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/main.c -o CMakeFiles/MergeSortMultithreaded.dir/main.c.s

# Object files for target MergeSortMultithreaded
MergeSortMultithreaded_OBJECTS = \
"CMakeFiles/MergeSortMultithreaded.dir/main.c.o"

# External object files for target MergeSortMultithreaded
MergeSortMultithreaded_EXTERNAL_OBJECTS =

MergeSortMultithreaded: CMakeFiles/MergeSortMultithreaded.dir/main.c.o
MergeSortMultithreaded: CMakeFiles/MergeSortMultithreaded.dir/build.make
MergeSortMultithreaded: CMakeFiles/MergeSortMultithreaded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable MergeSortMultithreaded"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MergeSortMultithreaded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MergeSortMultithreaded.dir/build: MergeSortMultithreaded
.PHONY : CMakeFiles/MergeSortMultithreaded.dir/build

CMakeFiles/MergeSortMultithreaded.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MergeSortMultithreaded.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MergeSortMultithreaded.dir/clean

CMakeFiles/MergeSortMultithreaded.dir/depend:
	cd /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mostafa/CLionProjects/Multithreaded-Merge-Sort /home/mostafa/CLionProjects/Multithreaded-Merge-Sort /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug /home/mostafa/CLionProjects/Multithreaded-Merge-Sort/cmake-build-debug/CMakeFiles/MergeSortMultithreaded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MergeSortMultithreaded.dir/depend

