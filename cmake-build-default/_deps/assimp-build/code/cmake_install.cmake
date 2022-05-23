# Install script for directory: D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/code/libassimpd.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/anim.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/aabb.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/ai_assert.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/camera.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/color4.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/color4.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-build/code/../include/assimp/config.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/defs.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Defines.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/cfileio.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/light.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/material.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/material.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/matrix3x3.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/matrix3x3.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/matrix4x4.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/matrix4x4.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/mesh.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/pbrmaterial.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/postprocess.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/quaternion.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/quaternion.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/scene.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/metadata.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/texture.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/types.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/vector2.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/vector2.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/vector3.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/vector3.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/version.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/cimport.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/importerdesc.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Importer.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/DefaultLogger.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/ProgressHandler.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/IOStream.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/IOSystem.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Logger.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/LogStream.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/NullLogger.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/cexport.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Exporter.hpp"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/DefaultIOStream.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/DefaultIOSystem.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/ZipArchiveIOSystem.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/SceneCombiner.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/fast_atof.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/qnan.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/BaseImporter.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Hash.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/MemoryIOWrapper.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/ParsingUtils.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/StreamReader.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/StreamWriter.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/StringComparison.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/StringUtils.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/SGSpatialSort.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/GenericProperty.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/SpatialSort.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/SkeletonMeshBuilder.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/SmoothingGroups.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/SmoothingGroups.inl"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/StandardShapes.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/RemoveComments.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Subdivision.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Vertex.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/LineSplitter.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/TinyFormatter.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Profiler.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/LogAux.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Bitmap.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/XMLTools.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/IOStreamBuffer.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/CreateAnimMesh.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/irrXMLWrapper.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/BlobIOSystem.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/MathFunctions.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Macros.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Exceptional.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/ByteSwapper.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Compiler/pushpack1.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Compiler/poppack1.h"
    "D:/Wojtek-uczelnia/EPG/CrunchEngine/cmake-build-default/_deps/assimp-src/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

