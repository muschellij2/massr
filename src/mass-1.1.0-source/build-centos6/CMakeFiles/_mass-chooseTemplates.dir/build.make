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
CMAKE_BINARY_DIR = /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6

# Utility rule file for _mass-chooseTemplates.

# Include the progress variables for this target.
include CMakeFiles/_mass-chooseTemplates.dir/progress.make

CMakeFiles/_mass-chooseTemplates: bin/mass-chooseTemplates
CMakeFiles/_mass-chooseTemplates: src/CMakeFiles/mass-chooseTemplates.dir/build/mass-chooseTemplates.sh

bin/mass-chooseTemplates: src/CMakeFiles/mass-chooseTemplates.dir/build.cmake
bin/mass-chooseTemplates: /sbiasfw/lab/basis/2.1.2/centos6/share/cmake-modules/CommonTools.cmake
bin/mass-chooseTemplates: src/CMakeFiles/mass-chooseTemplates.dir/cache.cmake
bin/mass-chooseTemplates: config/BasisScriptConfig.cmake
bin/mass-chooseTemplates: config/ScriptConfig.cmake
bin/mass-chooseTemplates: ../src/mass-chooseTemplates.sh.in
	$(CMAKE_COMMAND) -E cmake_progress_report /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building BASH executable bin/mass-chooseTemplates..."
	/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake -P /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/src/CMakeFiles/mass-chooseTemplates.dir/build.cmake

src/CMakeFiles/mass-chooseTemplates.dir/build/mass-chooseTemplates.sh: bin/mass-chooseTemplates

_mass-chooseTemplates: CMakeFiles/_mass-chooseTemplates
_mass-chooseTemplates: bin/mass-chooseTemplates
_mass-chooseTemplates: src/CMakeFiles/mass-chooseTemplates.dir/build/mass-chooseTemplates.sh
_mass-chooseTemplates: CMakeFiles/_mass-chooseTemplates.dir/build.make
.PHONY : _mass-chooseTemplates

# Rule to build all files generated by this target.
CMakeFiles/_mass-chooseTemplates.dir/build: _mass-chooseTemplates
.PHONY : CMakeFiles/_mass-chooseTemplates.dir/build

CMakeFiles/_mass-chooseTemplates.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_mass-chooseTemplates.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_mass-chooseTemplates.dir/clean

CMakeFiles/_mass-chooseTemplates.dir/depend:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/CMakeFiles/_mass-chooseTemplates.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_mass-chooseTemplates.dir/depend

