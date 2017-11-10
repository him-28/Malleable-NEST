# Install script for directory: /home/bsc15/bsc15982/nest-simulator

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/nest" TYPE FILE FILES
    "/home/bsc15/bsc15982/nest-simulator/LICENSE"
    "/home/bsc15/bsc15982/nest-simulator/README.md"
    "/home/bsc15/bsc15982/nest-simulator/NEWS"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bsc15/bsc15982/nest-simulator/change/doc/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/examples/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/extras/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/lib/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/libnestutil/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/librandom/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/models/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/sli/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/nest/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/nestkernel/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/precise/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/testsuite/cmake_install.cmake")
  include("/home/bsc15/bsc15982/nest-simulator/change/topology/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bsc15/bsc15982/nest-simulator/change/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
