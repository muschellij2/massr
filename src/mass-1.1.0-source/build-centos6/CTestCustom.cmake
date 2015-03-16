##############################################################################
# @file  CTestCustom.cmake
# @brief Custom testing configuration.
#
# @note The CTestCustom.cmake file is automatically generated by BASIS from
#       the file CTestCustom.cmake.in which is part of the
#       MASS package.
#
# The custom CTest variables which can be set in this CTest configuration file
# are documented on the
# <a href="http://www.vtk.org/Wiki/CMake_Testing_With_CTest#Customizing_CTest">
# Wiki of the VTK project</a>.
#
# Copyright (c) 2011-2014 University of Pennsylvania. All rights reserved.<br />
# See http://www.cbica.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup BasisSettings
##############################################################################

# ============================================================================
# disable verification of self-signed CA certificates
# ============================================================================

## @brief cURL options for dashboad submissions.
#
# The following cURL options disable the verification of the CA certificate.
# This is required when self-signed certificates are used which cannot be verified.
#
# The drop method is set in the CTest configuration file CTestConfig.cmake.
#
# Note: By default, CTest does not support HTTPS as submission method.
#       In order to enable it, CTest (and hence CMake) has to be build
#       manually with the option CMAKE_USE_OPENSSL enabled.
if (CTEST_DROP_METHOD STREQUAL "https")
  set (
    CTEST_CURL_OPTIONS
      "CURLOPT_SSL_VERIFYPEER_OFF"
      "CURLOPT_SSL_VERIFYHOST_OFF"
  )
endif ()

# ============================================================================
# custom CTest settings
# ============================================================================

# ----------------------------------------------------------------------------
# warnings
# ----------------------------------------------------------------------------

## @brief Match expressions for warning messages.
set (
  CTEST_CUSTOM_WARNING_MATCH
    ${CTEST_CUSTOM_WARNING_MATCH} # keep current warning matches
    "[0-9][0-9]*: WARNING "       # add match expressions on separate lines
    "[0-9][0-9]*: Warning "
    "[0-9][0-9]*: warning "
)

## @brief Match expressions for ignored warning messages.
set (
  CTEST_CUSTOM_WARNING_EXCEPTION
    ${CTEST_CUSTOM_WARNING_EXCEPTION} # keep current warning exceptions
#   "Example-1.0"                     # add exception expressions on separate lines
)

# specify maximum number of warnings to display
#set (CTEST_CUSTOM_MAXIMUM_NUMBER_OF_WARNINGS "100")

# ----------------------------------------------------------------------------
# errors
# ----------------------------------------------------------------------------

## @brief Match expressions for error messages.
set (
  CTEST_CUSTOM_ERROR_MATCH
    ${CTEST_CUSTOM_ERROR_MATCH} # keep current error matches
    "[0-9][0-9]*: ERROR "       # add match expressions on separate lines
    "[0-9][0-9]*: Error "
    "[0-9][0-9]*: error "
    "No tests were found!!!"    # CTest error if their are no tests
)

## @brief Match expressions for ignored error messages.
set (
  CTEST_CUSTOM_ERROR_EXCEPTION
    ${CTEST_CUSTOM_ERROR_EXCEPTION} # keep current error exceptions
#   "ExampleExec-1.0"               # add exception expressions on separate lines
)

# specify maximum number of errors to display
#set (CTEST_CUSTOM_MAXIMUM_NUMBER_OF_ERRORS "100")

# ----------------------------------------------------------------------------
# test
# ----------------------------------------------------------------------------

## @brief Specify tests which should be ignored during the test stage.
set (
  CTEST_CUSTOM_TESTS_IGNORE
    ${CTEST_CUSTOM_TESTS_IGNORE}
    ""
)

## @brief Specify command to execute before execution of any test during test stage.
set (
  CTEST_CUSTOM_PRE_TEST
    ${CTEST_CUSTOM_PRE_TEST}
    ""
)

## @brief Specify command to execute at the end of the test stage.
set (
  CTEST_CUSTOM_POST_TEST
    ${CTEST_CUSTOM_POST_TEST}
    ""
)

# ----------------------------------------------------------------------------
# coverage
# ----------------------------------------------------------------------------

# get relative paths for use in globbing expression
file (RELATIVE_PATH MODULES_DIR "/sbia/home/bergman/MASS/MASS_1.1.0" "/sbia/home/bergman/MASS/MASS_1.1.0/modules")
file (RELATIVE_PATH CODE_DIR    "/sbia/home/bergman/MASS/MASS_1.1.0" "/sbia/home/bergman/MASS/MASS_1.1.0/src")
file (RELATIVE_PATH INCLUDE_DIR "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos6" "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos6/include")

## @brief Exclude certain files from coverage analysis.
set (
  CTEST_CUSTOM_COVERAGE_EXCLUDE
    ${CTEST_CUSTOM_COVERAGE_EXCLUDE} # keep current exclude expressions
    "/CMakeFiles/CMakeTmp/"          # exclude try_compile sources
    "./test/.*"                      # exclude test implementations
    "./modules/.*/test/.*"           # exclude test implementations of modules
    # add further exclude expressions here
)

## @brief Specify additional files which should be considered for coverage report.
#
# Note that the expressions here are globbing expression as interpreted
# by CMake's file(GLOB) command, not regular expressions.
set (CTEST_EXTRA_COVERAGE_GLOB ${CTEST_EXTRA_COVERAGE_GLOB})
foreach (E IN ITEMS .c .cc .cpp .cxx .h .hh .hpp .hxx .txx .inl .inc)
  list (APPEND CTEST_EXTRA_COVERAGE_GLOB
    "${CODE_DIR}/*${E}"
  )
endforeach ()
foreach (E IN ITEMS .h .hh .hpp .hxx .txx .inl .inc)
  list (APPEND CTEST_EXTRA_COVERAGE_GLOB
    "${INCLUDE_DIR}/*${E}"
  )
endforeach ()
foreach (M IN LISTS "")
  foreach (E IN ITEMS .h .hh .hpp .hxx .txx .inl .inc)
    list (APPEND CTEST_EXTRA_COVERAGE_GLOB
      "${MODULES_DIR}/${M}/${INCLUDE_DIR}/*${E}"
    )
  endforeach ()
  foreach (E IN ITEMS .c .cc .cpp .cxx .h .hh .hpp .hxx .txx .inl .inc)
    list (APPEND CTEST_EXTRA_COVERAGE_GLOB
      "${MODULES_DIR}/${M}/${CODE_DIR}/*${E}"
    )
  endforeach ()
endforeach ()

# ----------------------------------------------------------------------------
# memory check
# ----------------------------------------------------------------------------

## @brief Specify tests which should be ignored during the memory check stage.
set (
  CTEST_CUSTOM_MEMCHECK_IGNORE
    ""
)

## @brief Specify command to execute before execution of any test during memory check stage.
set (
  CTEST_CUSTOM_PRE_MEMCHECK
    ""
)

## @brief Specify command to execute at the end of the memory check stage.
set (
  CTEST_CUSTOM_POST_MEMCHECK
    ""
)

# ----------------------------------------------------------------------------
# output
# ----------------------------------------------------------------------------

## @brief Adjust output size limit of failed tests in number of characters/bytes.
#
# Note: In order to have CTest ignore these limits and not truncate the test
#       output, the string "CTEST_FULL_OUTPUT" has to be output by the test
#       (e.g., as first line of the test output to stdout).
#
# See:  http://public.kitware.com/pipermail/cdash/2009-November/000589.html
set (CTEST_CUSTOM_MAXIMUM_FAILED_TEST_OUTPUT_SIZE "1048576")

## @brief Adjust output size limit of failed tests in number of characters/bytes.
#
# Note: In order to have CTest ignore these limits and not truncate the test
#       output, the string "CTEST_FULL_OUTPUT" has to be output by the test
#       (e.g., as first line of the test output to stdout).
#
# See:  http://public.kitware.com/pipermail/cdash/2009-November/000589.html
set (CTEST_CUSTOM_MAXIMUM_PASSED_TEST_OUTPUT_SIZE "102400")
