# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /snap/clion/261/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /snap/clion/261/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/Projects/TuringMachine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Projects/TuringMachine/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/turing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/turing.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/turing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/turing.dir/flags.make

CMakeFiles/turing.dir/main.cpp.o: CMakeFiles/turing.dir/flags.make
CMakeFiles/turing.dir/main.cpp.o: /home/user/Projects/TuringMachine/main.cpp
CMakeFiles/turing.dir/main.cpp.o: CMakeFiles/turing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/Projects/TuringMachine/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/turing.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/turing.dir/main.cpp.o -MF CMakeFiles/turing.dir/main.cpp.o.d -o CMakeFiles/turing.dir/main.cpp.o -c /home/user/Projects/TuringMachine/main.cpp

CMakeFiles/turing.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/turing.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/Projects/TuringMachine/main.cpp > CMakeFiles/turing.dir/main.cpp.i

CMakeFiles/turing.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/turing.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/Projects/TuringMachine/main.cpp -o CMakeFiles/turing.dir/main.cpp.s

# Object files for target turing
turing_OBJECTS = \
"CMakeFiles/turing.dir/main.cpp.o"

# External object files for target turing
turing_EXTERNAL_OBJECTS =

turing: CMakeFiles/turing.dir/main.cpp.o
turing: CMakeFiles/turing.dir/build.make
turing: CMakeFiles/turing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/user/Projects/TuringMachine/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable turing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/turing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/turing.dir/build: turing
.PHONY : CMakeFiles/turing.dir/build

CMakeFiles/turing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/turing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/turing.dir/clean

CMakeFiles/turing.dir/depend:
	cd /home/user/Projects/TuringMachine/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Projects/TuringMachine /home/user/Projects/TuringMachine /home/user/Projects/TuringMachine/cmake-build-debug /home/user/Projects/TuringMachine/cmake-build-debug /home/user/Projects/TuringMachine/cmake-build-debug/CMakeFiles/turing.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/turing.dir/depend

