# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake

# The command to remove a file.
RM = /sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /sbia/home/bergman/MASS/MASS_1.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5

# Utility rule file for _mass-morpho.

# Include the progress variables for this target.
include CMakeFiles/_mass-morpho.dir/progress.make

CMakeFiles/_mass-morpho: lib/mass-morpho
CMakeFiles/_mass-morpho: src/CMakeFiles/mass-morpho.dir/build/mass-morpho.sh

lib/mass-morpho: src/CMakeFiles/mass-morpho.dir/build.cmake
lib/mass-morpho: /sbiasfw/lab/basis/2.1.2/centos5/share/cmake-modules/CommonTools.cmake
lib/mass-morpho: src/CMakeFiles/mass-morpho.dir/cache.cmake
lib/mass-morpho: config/BasisScriptConfig.cmake
lib/mass-morpho: config/ScriptConfig.cmake
lib/mass-morpho: ../src/mass-morpho.sh.in
	$(CMAKE_COMMAND) -E cmake_progress_report /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building BASH executable lib/mass-morpho..."
	/gpfs/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake -P /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/src/CMakeFiles/mass-morpho.dir/build.cmake

src/CMakeFiles/mass-morpho.dir/build/mass-morpho.sh: lib/mass-morpho

_mass-morpho: CMakeFiles/_mass-morpho
_mass-morpho: lib/mass-morpho
_mass-morpho: src/CMakeFiles/mass-morpho.dir/build/mass-morpho.sh
_mass-morpho: CMakeFiles/_mass-morpho.dir/build.make
.PHONY : _mass-morpho

# Rule to build all files generated by this target.
CMakeFiles/_mass-morpho.dir/build: _mass-morpho
.PHONY : CMakeFiles/_mass-morpho.dir/build

CMakeFiles/_mass-morpho.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_mass-morpho.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_mass-morpho.dir/clean

CMakeFiles/_mass-morpho.dir/depend:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/CMakeFiles/_mass-morpho.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_mass-morpho.dir/depend

