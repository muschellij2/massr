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

# Utility rule file for _schedulerSetting.

# Include the progress variables for this target.
include CMakeFiles/_schedulerSetting.dir/progress.make

CMakeFiles/_schedulerSetting: lib/bash/mass/SettingsSGE.sh
CMakeFiles/_schedulerSetting: src/schedulerSettings/CMakeFiles/schedulerSetting.dir/build/mass/SettingsSGE.sh

lib/bash/mass/SettingsSGE.sh: src/schedulerSettings/CMakeFiles/schedulerSetting.dir/build_SettingsSGE_sh.cmake
lib/bash/mass/SettingsSGE.sh: /sbiasfw/lab/basis/2.1.2/centos6/share/cmake-modules/CommonTools.cmake
lib/bash/mass/SettingsSGE.sh: src/schedulerSettings/CMakeFiles/schedulerSetting.dir/cache.cmake
lib/bash/mass/SettingsSGE.sh: config/BasisScriptConfig.cmake
lib/bash/mass/SettingsSGE.sh: config/ScriptConfig.cmake
lib/bash/mass/SettingsSGE.sh: ../src/schedulerSettings/SettingsSGE.sh
	$(CMAKE_COMMAND) -E cmake_progress_report /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building BASH module lib/bash/mass/SettingsSGE.sh..."
	/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake -P /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/src/schedulerSettings/CMakeFiles/schedulerSetting.dir/build_SettingsSGE_sh.cmake

src/schedulerSettings/CMakeFiles/schedulerSetting.dir/build/mass/SettingsSGE.sh: lib/bash/mass/SettingsSGE.sh

_schedulerSetting: CMakeFiles/_schedulerSetting
_schedulerSetting: lib/bash/mass/SettingsSGE.sh
_schedulerSetting: src/schedulerSettings/CMakeFiles/schedulerSetting.dir/build/mass/SettingsSGE.sh
_schedulerSetting: CMakeFiles/_schedulerSetting.dir/build.make
.PHONY : _schedulerSetting

# Rule to build all files generated by this target.
CMakeFiles/_schedulerSetting.dir/build: _schedulerSetting
.PHONY : CMakeFiles/_schedulerSetting.dir/build

CMakeFiles/_schedulerSetting.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_schedulerSetting.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_schedulerSetting.dir/clean

CMakeFiles/_schedulerSetting.dir/depend:
	cd /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6 /sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/CMakeFiles/_schedulerSetting.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_schedulerSetting.dir/depend

