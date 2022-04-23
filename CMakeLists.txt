cmake_minimum_required(VERSION 3.22)
project(CrunchEngine)

set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(libs)
target_include_directories(${PROJECT_NAME} PUBLIC libs)
target_link_directories(${PROJECT_NAME} PRIVATE libs)
target_link_libraries(${PROJECT_NAME} IMGUI)

