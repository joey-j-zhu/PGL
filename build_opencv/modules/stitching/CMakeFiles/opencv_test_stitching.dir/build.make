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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/joeyzhu/Projects/PGL/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/joeyzhu/Projects/PGL/build_opencv

# Include any dependencies generated for this target.
include modules/stitching/CMakeFiles/opencv_test_stitching.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.make

# Include the progress variables for this target.
include modules/stitching/CMakeFiles/opencv_test_stitching.dir/progress.make

# Include the compile flags for this target's objects.
include modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/ocl/test_warpers.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/ocl/test_warpers.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/ocl/test_warpers.cpp > CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/ocl/test_warpers.cpp -o CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cuda.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cuda.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cuda.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_blenders.cuda.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_exposure_compensate.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_exposure_compensate.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_exposure_compensate.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_exposure_compensate.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_main.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_main.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_main.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_main.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_matchers.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_matchers.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_matchers.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_matchers.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_reprojection.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_reprojection.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_reprojection.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_reprojection.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_stitcher.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_stitcher.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_stitcher.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_stitcher.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.s

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/flags.make
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o: /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_wave_correction.cpp
modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o: modules/stitching/CMakeFiles/opencv_test_stitching.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o -MF CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o.d -o CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o -c /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_wave_correction.cpp

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.i"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_wave_correction.cpp > CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.i

modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.s"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/joeyzhu/Projects/PGL/opencv/modules/stitching/test/test_wave_correction.cpp -o CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.s

# Object files for target opencv_test_stitching
opencv_test_stitching_OBJECTS = \
"CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o" \
"CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o"

# External object files for target opencv_test_stitching
opencv_test_stitching_EXTERNAL_OBJECTS =

bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/ocl/test_warpers.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_blenders.cuda.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_exposure_compensate.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_main.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_matchers.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_reprojection.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_stitcher.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/test/test_wave_correction.cpp.o
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/build.make
bin/opencv_test_stitching: lib/libopencv_ts.a
bin/opencv_test_stitching: lib/libopencv_stitching.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_highgui.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_calib3d.4.5.2.dylib
bin/opencv_test_stitching: 3rdparty/lib/libippiw.a
bin/opencv_test_stitching: 3rdparty/ippicv/ippicv_mac/icv/lib/intel64/libippicv.a
bin/opencv_test_stitching: lib/libopencv_videoio.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_imgcodecs.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_features2d.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_flann.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_imgproc.4.5.2.dylib
bin/opencv_test_stitching: lib/libopencv_core.4.5.2.dylib
bin/opencv_test_stitching: modules/stitching/CMakeFiles/opencv_test_stitching.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/joeyzhu/Projects/PGL/build_opencv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ../../bin/opencv_test_stitching"
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_stitching.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/stitching/CMakeFiles/opencv_test_stitching.dir/build: bin/opencv_test_stitching
.PHONY : modules/stitching/CMakeFiles/opencv_test_stitching.dir/build

modules/stitching/CMakeFiles/opencv_test_stitching.dir/clean:
	cd /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_stitching.dir/cmake_clean.cmake
.PHONY : modules/stitching/CMakeFiles/opencv_test_stitching.dir/clean

modules/stitching/CMakeFiles/opencv_test_stitching.dir/depend:
	cd /Users/joeyzhu/Projects/PGL/build_opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/joeyzhu/Projects/PGL/opencv /Users/joeyzhu/Projects/PGL/opencv/modules/stitching /Users/joeyzhu/Projects/PGL/build_opencv /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching /Users/joeyzhu/Projects/PGL/build_opencv/modules/stitching/CMakeFiles/opencv_test_stitching.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/stitching/CMakeFiles/opencv_test_stitching.dir/depend

