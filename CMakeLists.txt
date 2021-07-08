cmake_minimum_required(VERSION 3.15)
project(CLion)

set(CMAKE_CXX_STANDARD 17)
include_directories(CLion PRIVATE "${PROJECT_SOURCE_DIR}")
set(GLEW_H /usr/local/Cellar/glew/2.2.0_1/include/GL)
set(GLFW_H /usr/local/Cellar/glfw/3.3.4/include/GLFW)
set(GLM_H /usr/local/Cellar/glm/0.9.9.8/include/glm)
include_directories(${GLEW_H} ${GLFW_H} ${GLM_H})

set(GLEW_LINK /usr/local/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib)
set(GLFW_LINK /usr/local/Cellar/glfw/3.3.4/lib/libglfw.3.3.dylib)
set(GLM_LINK /usr/local/Cellar/glm/0.9.9.8/lib)
link_libraries(${OPENGL} ${GLEW_LINK} ${GLFW_LINK} ${GLM_LINK})

add_executable(CLion
        src/main.cpp
        src/Mesh.h
        src/Mesh.cpp
        src/Shader.cpp
        src/Shader.h
        src/vshader.glsl
        src/fshader.glsl
        src/GLWindow.h
        src/GLWindow.cpp
        src/Camera.cpp
        src/Camera.h
        src/Texture.cpp
        src/Texture.h
        src/stb_image.h src/Light.cpp src/Light.h)

target_link_libraries(CLion "-framework OpenGL")
target_link_libraries(CLion "-framework GLUT")