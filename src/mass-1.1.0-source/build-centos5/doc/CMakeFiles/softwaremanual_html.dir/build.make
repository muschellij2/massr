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

# Utility rule file for softwaremanual_html.

# Include the progress variables for this target.
include doc/CMakeFiles/softwaremanual_html.dir/progress.make

doc/CMakeFiles/softwaremanual_html:
	$(CMAKE_COMMAND) -E cmake_progress_report /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building documentation softwaremanual (html)..."
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc && /sbia/sbiasfw/external/python/epd/7.3.1/bin/python /sbia/sbiasfw/external/python/epd/7.3.1/bin/sphinx-build -a -N -n -q -b html -c /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/. -d /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./doctrees /sbia/home/bergman/MASS/MASS_1.1.0/doc /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./html

softwaremanual_html: doc/CMakeFiles/softwaremanual_html
softwaremanual_html: doc/CMakeFiles/softwaremanual_html.dir/build.make
.PHONY : softwaremanual_html

# Rule to build all files generated by this target.
doc/CMakeFiles/softwaremanual_html.dir/build: softwaremanual_html
.PHONY : doc/CMakeFiles/softwaremanual_html.dir/build

doc/CMakeFiles/softwaremanual_html.dir/clean:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc && $(CMAKE_COMMAND) -P CMakeFiles/softwaremanual_html.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/softwaremanual_html.dir/clean

doc/CMakeFiles/softwaremanual_html.dir/depend:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0/doc /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc /sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/CMakeFiles/softwaremanual_html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/softwaremanual_html.dir/depend

