##############################################################################
# @file  MASSUse.cmake
# @brief CMake package configuration use file.
#
# @note The MASSUse.cmake file is automatically generated
#       by BASIS from the template file ConfigUse.cmake.in which is part of
#       the MASS package.
#
# In the default package use file of BASIS, which can be included here using
# the \@BASIS_USE\@ variable, the prefix used by the package configuration
# file is defined as @c NS variable. Thus, to use any variable set by the
# corresponding package configuration file, use code similar to:
#
# @code
# include_directories (${${NS}INCLUDE_DIRS})
# @endcode
#
# See the ConfigUse.cmake.in file of BASIS for details.
#
# @note The CMake code which is substituted for the \@BASIS_USE\@ variable
#       contains an include guard.
#
# Copyright (c) 2011-2014 University of Pennsylvania. All rights reserved.<br />
# See http://www.cbica.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisConfig
##############################################################################

# ============================================================================
# namespace
# ============================================================================

# prefix used for variable names
set (NS "MASS_")

# allow caller to change namespace - used by projects with modules
if (${NS}CONFIG_PREFIX)
  set (NS "${${NS}CONFIG_PREFIX}")
endif ()

# ============================================================================
# include guard
# ============================================================================

if (__${NS}USE_FILE_INCLUDED)
  return ()
else ()
  set (__${NS}USE_FILE_INCLUDED 1)
endif ()

# ============================================================================
# use project settings
# ============================================================================

# include directories
if (${NS}INCLUDE_DIRS)
  include_directories (${${NS}INCLUDE_DIRS})
elseif (${NS}INCLUDE_DIR)
  include_directories (${${NS}INCLUDE_DIR})
endif ()

# library directories
if (${NS}LIBRARY_DIRS)
  link_directories (${${NS}LIBRARY_DIRS})
elseif (${NS}LIBRARY_DIR)
  link_directories (${${NS}LIBRARY_DIR})
endif ()

# ============================================================================
# import build targets
# ============================================================================

## @brief Whether to import the exported targets.
set (NO_${NS}IMPORTS "${NO_${NS}IMPORTS}")

if (NOT NO_${NS}IMPORTS)
  include ("${${NS}EXPORTS_FILE}"        OPTIONAL)
  include ("${${NS}CUSTOM_EXPORTS_FILE}" OPTIONAL)
endif ()

# ============================================================================
# use modules
# ============================================================================

foreach (M IN LISTS ${NS}MODULES_REQUESTED)
  if (${NS}${M}_USE_FILE)
    set (${M}_CONFIG_PREFIX "${NS}${M}_")
    include ("${${NS}${M}_USE_FILE}")
    unset (${M}_CONFIG_PREFIX)
  endif ()
endforeach ()

# ============================================================================
# MASS configuration
# ============================================================================

# Use further project package configuration settings here.
