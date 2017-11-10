# Install script for directory: /home/bsc15/bsc15982/nest-simulator/nestkernel

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so"
         RPATH "$ORIGIN/../lib64:$ORIGIN/../lib64/nest:$ORIGIN/../../..:$ORIGIN/../../../nest:/apps/INTEL/2017.4/impi/2017.3.196/intel64/lib:/apps/INTEL/2017.4/impi/2017.3.196/intel64/lib/release_mt")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/bsc15/bsc15982/nest-simulator/change/nestkernel/libnestkernel.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so"
         OLD_RPATH "/home/bsc15/bsc15982/nest-simulator/change/librandom:/home/bsc15/bsc15982/nest-simulator/change/sli:/apps/INTEL/2017.4/impi/2017.3.196/intel64/lib:/apps/INTEL/2017.4/impi/2017.3.196/intel64/lib/release_mt:/home/bsc15/bsc15982/nest-simulator/change/libnestutil:"
         NEW_RPATH "$ORIGIN/../lib64:$ORIGIN/../lib64/nest:$ORIGIN/../../..:$ORIGIN/../../../nest:/apps/INTEL/2017.4/impi/2017.3.196/intel64/lib:/apps/INTEL/2017.4/impi/2017.3.196/intel64/lib/release_mt")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libnestkernel.so")
    endif()
  endif()
endif()

