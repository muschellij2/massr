# Generated by BASIS

if ("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
  message (FATAL_ERROR "CMake >= 2.8.4 required")
endif ()
cmake_policy (PUSH)
cmake_policy (VERSION 2.8.4)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set (CMAKE_IMPORT_FILE_VERSION 1)

# Create import target "mass.mass"
add_executable (mass.mass IMPORTED)
set_target_properties (mass.mass PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-chooseTemplates"
add_executable (mass.mass-chooseTemplates IMPORTED)
set_target_properties (mass.mass-chooseTemplates PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-thresholdJacobian"
add_executable (mass.mass-thresholdJacobian IMPORTED)
set_target_properties (mass.mass-thresholdJacobian PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-fillHoles"
add_executable (mass.mass-fillHoles IMPORTED)
set_target_properties (mass.mass-fillHoles PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-morpho"
add_executable (mass.mass-morpho IMPORTED)
set_target_properties (mass.mass-morpho PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-registrations"
add_executable (mass.mass-registrations IMPORTED)
set_target_properties (mass.mass-registrations PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-skullstripping"
add_executable (mass.mass-skullstripping IMPORTED)
set_target_properties (mass.mass-skullstripping PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.mass-choosetemplate"
add_executable (mass.mass-choosetemplate IMPORTED)
set_target_properties (mass.mass-choosetemplate PROPERTIES BASIS_TYPE "SCRIPT_EXECUTABLE")

# Create import target "mass.massUtilities"
add_library (mass.massUtilities UNKNOWN IMPORTED)
set_target_properties (mass.massUtilities PROPERTIES BASIS_TYPE "SCRIPT_LIBRARY")

# Create import target "mass.schedulerSetting"
add_library (mass.schedulerSetting UNKNOWN IMPORTED)
set_target_properties (mass.schedulerSetting PROPERTIES BASIS_TYPE "SCRIPT_LIBRARY")

# Import target "mass.mass" for configuration "Release"
set_property (TARGET mass.mass APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/bin/mass"
  )

# Import target "mass.mass-chooseTemplates" for configuration "Release"
set_property (TARGET mass.mass-chooseTemplates APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-chooseTemplates PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/bin/mass-chooseTemplates"
  )

# Import target "mass.mass-thresholdJacobian" for configuration "Release"
set_property (TARGET mass.mass-thresholdJacobian APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-thresholdJacobian PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/bin/mass-thresholdJacobian"
  )

# Import target "mass.mass-fillHoles" for configuration "Release"
set_property (TARGET mass.mass-fillHoles APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-fillHoles PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/mass-fillHoles"
  )

# Import target "mass.mass-morpho" for configuration "Release"
set_property (TARGET mass.mass-morpho APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-morpho PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/mass-morpho"
  )

# Import target "mass.mass-registrations" for configuration "Release"
set_property (TARGET mass.mass-registrations APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-registrations PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/mass-registrations"
  )

# Import target "mass.mass-skullstripping" for configuration "Release"
set_property (TARGET mass.mass-skullstripping APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-skullstripping PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/mass-skullstripping"
  )

# Import target "mass.mass-choosetemplate" for configuration "Release"
set_property (TARGET mass.mass-choosetemplate APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.mass-choosetemplate PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "PYTHON"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/mass-choosetemplate"
  )

# Import target "mass.massUtilities" for configuration "Release"
set_property (TARGET mass.massUtilities APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.massUtilities PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/bash"
  )

# Import target "mass.schedulerSetting" for configuration "Release"
set_property (TARGET mass.schedulerSetting APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties (mass.schedulerSetting PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "BASH"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE ""
  IMPORTED_LOCATION_RELEASE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/lib/bash"
  )

# Cleanup temporary variables.
set (_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
set (CMAKE_IMPORT_FILE_VERSION)
cmake_policy (POP)
