cmake_minimum_required(VERSION 3.17)
project(CrunchEngine)

set(CMAKE_CXX_STANDARD 17)

#=================== set app iocn ===================
set(APP_ICON_WINDOWS "${CMAKE_CURRENT_SOURCE_DIR}/appicon.rc")

#=================== EXECUTABLE ===================
add_executable(${PROJECT_NAME} ${APP_ICON_WINDOWS}
        src/main.cpp src/app/Application.cpp src/app/Application.h)

#=================== add IMGUI ===================
add_subdirectory(libs)
target_link_libraries(${PROJECT_NAME} IMGUI)
target_include_directories(${PROJECT_NAME} PUBLIC libs)
target_link_directories(${PROJECT_NAME} PRIVATE libs)


