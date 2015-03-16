# Install script for directory: /sbia/home/bergman/MASS/MASS_1.1.0/doc

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc" TYPE FILE RENAME "MASS_Software_Manual.pdf" FILES "/sbia/home/bergman/MASS/MASS_1.1.0/doc/MASS_Software_Manual.pdf")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      set (HTML_DESTINATION    "doc/html")
      set (PDF_DESTINATION     "doc")
      set (LATEX_DESTINATION   "")
      set (MAN_DESTINATION     "man/man7")
      set (TEXINFO_DESTINATION "")
      set (TEXT_DESTINATION    "")

      function (install_sphinx_doc BUILDER)
        if (BUILDER MATCHES "pdf")
          set (SPHINX_BUILDER "latex")
        else ()
          set (SPHINX_BUILDER "${BUILDER}")
        endif ()
        string (TOUPPER "${BUILDER}" BUILDER_U)
        set (CMAKE_INSTALL_PREFIX "${${BUILDER_U}_DESTINATION}")
        if (NOT CMAKE_INSTALL_PREFIX)
          return ()
        elseif (NOT IS_ABSOLUTE "${CMAKE_INSTALL_PREFIX}")
          set (CMAKE_INSTALL_PREFIX "/sbia/sbiasfw/lab/mass/1.1.0/${CMAKE_INSTALL_PREFIX}")
        endif ()
        set (EXT)
        if (BUILDER MATCHES "pdf")
          set (EXT ".pdf")
        elseif (BUILDER MATCHES "man")
          set (EXT ".?")
        elseif (BUILDER MATCHES "texinfo")
          set (EXT ".info")
        endif ()
        file (
          GLOB_RECURSE
            FILES
          RELATIVE "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./${SPHINX_BUILDER}"
            "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./${SPHINX_BUILDER}/*${EXT}"
        )
        foreach (F IN LISTS FILES)
          if (NOT F MATCHES "\\.buildinfo")
            set (RC 1)
            if (NOT BUILDER MATCHES "texinfo")
              execute_process (
                COMMAND "/gpfs/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake" -E compare_files
                    "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./${SPHINX_BUILDER}/${F}"
                    "${CMAKE_INSTALL_PREFIX}/${F}"
                RESULT_VARIABLE RC
                OUTPUT_QUIET
                ERROR_QUIET
              )
            endif ()
            if (RC EQUAL 0)
              message (STATUS "Up-to-date: ${CMAKE_INSTALL_PREFIX}/${F}")
            else ()
              message (STATUS "Installing: ${CMAKE_INSTALL_PREFIX}/${F}")
              if (BUILDER MATCHES "texinfo")
                if (EXISTS "${CMAKE_INSTALL_PREFIX}/dir")
                  execute_process (
                    COMMAND install-info
                        "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./${SPHINX_BUILDER}/${F}"
                        "${CMAKE_INSTALL_PREFIX}/dir"
                    RESULT_VARIABLE RC
                    OUTPUT_QUIET
                    ERROR_QUIET
                  )
                else ()
                  execute_process (
                    COMMAND "/gpfs/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake" -E copy_if_different
                        "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./${SPHINX_BUILDER}/${F}"
                        "${CMAKE_INSTALL_PREFIX}/dir"
                    RESULT_VARIABLE RC
                    OUTPUT_QUIET
                    ERROR_QUIET
                  )
                endif ()
              else ()
                execute_process (
                  COMMAND "/gpfs/sbia/sbiasfw/external/cmake/centos5/2.8.10.2/bin/cmake" -E copy_if_different
                      "/sbia/home/bergman/MASS/MASS_1.1.0/build-centos5/doc/./${SPHINX_BUILDER}/${F}"
                      "${CMAKE_INSTALL_PREFIX}/${F}"
                  RESULT_VARIABLE RC
                  OUTPUT_QUIET
                  ERROR_QUIET
                )
              endif ()
              if (RC EQUAL 0)
                # also remember .info files for deinstallation via install-info --delete
                list (APPEND CMAKE_INSTALL_MANIFEST_FILES "${CMAKE_INSTALL_PREFIX}/${F}")
              else ()
                message (STATUS "Failed to install ${CMAKE_INSTALL_PREFIX}/${F}")
              endif ()
            endif ()
          endif ()
        endforeach ()
      endfunction ()

      set (BUILDERS "pdf;html;dirhtml;man")
      set (HTML_INSTALLED FALSE)
      foreach (BUILDER IN LISTS BUILDERS)
        if ((BUILDER MATCHES "html" AND NOT HTML_INSTALLED) OR
              (BUILDER MATCHES "texinfo|man" AND UNIX) OR
              NOT BUILDER MATCHES "html|texinfo|man|latex|linkcheck")
          install_sphinx_doc (${BUILDER})
          if (BUILDER MATCHES "html")
            set (HTML_INSTALLED TRUE)
          endif ()
        endif ()
      endforeach ()
      
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

