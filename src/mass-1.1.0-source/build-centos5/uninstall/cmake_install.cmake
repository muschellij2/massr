# Install script for directory: /sbiasfw/lab/basis/2.1.2/centos5/share/cmake-modules/uninstall

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/sbia/sbiasfw/lab/mass/1.1.0")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mass" TYPE FILE RENAME "MASSUninstall.cmake" FILES "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/cmake_uninstall.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
    set (UNINSTALLER "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/uninstall-mass")
    message ("-- Installing: ${UNINSTALLER}")
    file (WRITE "${UNINSTALLER}" "")
    if (UNIX)
      file (APPEND "${UNINSTALLER}" "#! /bin/sh
")
    endif ()
    file (APPEND "${UNINSTALLER}" "\"/gpfs/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake\" -P \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mass/MASSUninstall.cmake\"")
    if (UNIX)
      execute_process (COMMAND /bin/chmod +x "${UNINSTALLER}")
    endif ()
    list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${UNINSTALLER}")
    
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
    set (INSTALL_MANIFEST_FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mass/MASSInstallManifest.txt")
    list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${INSTALL_MANIFEST_FILE}")
    message ("-- Installing: ${INSTALL_MANIFEST_FILE}")
    file (WRITE "${INSTALL_MANIFEST_FILE}" "")
    foreach (F ${CMAKE_INSTALL_MANIFEST_FILES})
      file (APPEND "${INSTALL_MANIFEST_FILE}" "${F}
")
    endforeach ()
    
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

