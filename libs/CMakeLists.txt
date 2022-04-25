#=================== IMGUI ===================
set(IMGUI_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/imgui)
set(IMGUI_BACKENDS_DIR ${IMGUI_SOURCE_DIR}/backends)

set(SOURCE_FILES
        ${IMGUI_SOURCE_DIR}/imgui_demo.cpp
        ${IMGUI_SOURCE_DIR}/imgui_draw.cpp
        ${IMGUI_SOURCE_DIR}/imgui_tables.cpp
        ${IMGUI_SOURCE_DIR}/imgui.cpp
        ${IMGUI_SOURCE_DIR}/imgui_widgets.cpp
        ${IMGUI_BACKENDS_DIR}/imgui_impl_opengl3.cpp
        ${IMGUI_BACKENDS_DIR}/imgui_impl_glfw.cpp
        )

add_library(IMGUI ${SOURCE_FILES})

#=================== GLFW ===================
add_subdirectory(glfw)
target_link_libraries(${PROJECT_NAME} glfw)
find_package(OpenGL REQUIRED)
target_link_libraries(${PROJECT_NAME} OpenGL::GL)

