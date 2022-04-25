cmake_minimum_required(VERSION 3.17)
project(CrunchEngine)

set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME} src/main.cpp src/app/Application.cpp src/app/Application.h)

#=================== add IMGUI ===================
add_subdirectory(libs)
target_link_libraries(${PROJECT_NAME} IMGUI)
target_include_directories(${PROJECT_NAME} PUBLIC libs)
target_link_directories(${PROJECT_NAME} PRIVATE libs)

