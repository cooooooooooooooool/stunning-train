# Install script for directory: /home/marcie/libprocess-start/makun_test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/rmdir/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/cache/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/duration/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/interval/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/ip/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/os/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/strings/cmake_install.cmake")
  include("/home/marcie/libprocess-start/cmake-build-debug/makun_test/http/cmake_install.cmake")

endif()

