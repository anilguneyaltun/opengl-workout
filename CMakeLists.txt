cmake_minimum_required(VERSION 3.17)
project(CLion)

set(CMAKE_CXX_STANDARD 17)
include_directories(CLion PRIVATE "${PROJECT_SOURCE_DIR}")
set(GLEW_H /usr/local/Cellar/glew/2.2.0/include/GL)
set(GLFW_H /usr/local/Cellar/glfw/3.3.2/include/GLFW)
set(GLM_H /usr/local/Cellar/glm/0.9.9.5/include/glm)
include_directories(${GLEW_H} ${GLFW_H} ${GLM_H})

set(GLEW_LINK /usr/local/Cellar/glew/2.2.0/lib/libGLEW.2.2.dylib)
set(GLFW_LINK /usr/local/Cellar/glfw/3.3.2/lib/libglfw.3.3.dylib)
set(GLM_LINK /usr/local/Cellar/glm/0.9.9.5/lib)
link_libraries(${OPENGL} ${GLEW_LINK} ${GLFW_LINK})


set(SOURCE_FILES src/main.cpp)
add_executable(CLion src/main.cpp src/Mesh.cpp src/Mesh.h)

target_link_libraries(CLion "-framework OpenGL")
target_link_libraries(CLion "-framework GLUT")