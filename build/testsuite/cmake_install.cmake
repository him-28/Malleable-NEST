# Install script for directory: /home/bsc15/bsc15982/nest-simulator/testsuite

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bsc15/bsc15982/nest-simulator/change")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/nest" TYPE DIRECTORY FILES
    "/home/bsc15/bsc15982/nest-simulator/testsuite/selftests"
    "/home/bsc15/bsc15982/nest-simulator/testsuite/unittests"
    "/home/bsc15/bsc15982/nest-simulator/testsuite/regressiontests"
    "/home/bsc15/bsc15982/nest-simulator/testsuite/manualtests"
    "/home/bsc15/bsc15982/nest-simulator/testsuite/mpitests"
    "/home/bsc15/bsc15982/nest-simulator/testsuite/mpi_selftests"
    "/home/bsc15/bsc15982/nest-simulator/testsuite/musictests"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nest/extras" TYPE PROGRAM FILES "/home/bsc15/bsc15982/nest-simulator/change/testsuite/do_tests.sh")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/selftests/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/unittests/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/regressiontests/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/mpi_selftests/fail/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/mpi_selftests/pass/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/mpitests/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/musictests/cmake_install.cmake")

endif()

