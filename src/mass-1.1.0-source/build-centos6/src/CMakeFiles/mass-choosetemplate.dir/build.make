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

# Utility rule file for mass-choosetemplate.

# Include the progress variables for this target.
include src/CMakeFiles/mass-choosetemplate.dir/progress.make

src/CMakeFiles/mass-choosetemplate:

mass-choosetemplate: src/CMakeFiles/mass-choosetemplate
mass-choosetemplate: src/CMakeFiles/mass-choosetemplate.dir/build.make
.PHONY : mass-choosetemplate

# Rule to build all files generated by this target.
src/CMakeFiles/mass-choosetemplate.dir/build: mass-choosetemplate
.PHONY : src/CMakeFiles/mass-choosetemplate.dir/build

src/CMakeFiles/mass-choosetemplate.dir/clean:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/src && $(CMAKE_COMMAND) -P CMakeFiles/mass-choosetemplate.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/mass-choosetemplate.dir/clean

src/CMakeFiles/mass-choosetemplate.dir/depend:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0/src /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/src /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/src/CMakeFiles/mass-choosetemplate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/mass-choosetemplate.dir/depend

