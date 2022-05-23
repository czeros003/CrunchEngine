# Install script for directory: D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/CrunchEngine")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "D:/CLion 2021.3.4/bin/mingw/bin/objdump.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibassimp5.0.0-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/assimp-5.0" TYPE FILE FILES
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/assimp-config.cmake"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/assimp-config-version.cmake"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/assimpTargets.cmake"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/assimpTargets-debug.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibassimp5.0.0-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/assimp.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/contrib/zlib/cmake_install.cmake")
  include("D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/contrib/cmake_install.cmake")
  include("D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/code/cmake_install.cmake")

endif()

