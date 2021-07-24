cmake_minimum_required(VERSION 3.15)
project(CLion)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_VERBOSE_MAKEFILE ON)

include_directories(CLion PUBLIC "${PROJECT_SOURCE_DIR}")
set(GLEW_H /usr/local/Cellar/glew/2.2.0_1/include/GL)
set(GLFW_H /usr/local/Cellar/glfw/3.3.4/include/GLFW)
set(GLM_H /usr/local/Cellar/glm/0.9.9.8/include/glm)
set(ASSIMP_H /usr/local/include/assimp)
include_directories(${GLEW_H} ${GLFW_H} ${GLM_H} ${ASSIMP_H})

set(GLEW_LINK /usr/local/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib)
set(GLFW_LINK /usr/local/Cellar/glfw/3.3.4/lib/libglfw.3.3.dylib)
set(GLM_LINK /usr/local/Cellar/glm/0.9.9.8/lib)
set(ASSIMP_LINK /usr/local/lib/assimp/libassimp.5.0.0.dylib)
set(ASSIMP_LINK2 /usr/local/lib/assimp/libIrrXML.dylib)
link_libraries(${OPENGL} ${GLEW_LINK} ${GLFW_LINK} ${GLM_LINK} ${ASSIMP_LINK} ${ASSIMP_LINK2})

find_package(OpenGL)

file(GLOB_RECURSE HEADER_FILES
        ${CMAKE_SOURCE_DIR}/src/*.hpp
        ${CMAKE_SOURCE_DIR}/src/*.h)

file(GLOB_RECURSE SOURCE_FILES
        ${CMAKE_SOURCE_DIR}/src/*.cpp
        ${CMAKE_SOURCE_DIR}/src/*.c)

file(GLOB_RECURSE SHADER_FILES
        ${CMAKE_SOURCE_DIR}/src/*.glsl)

add_executable(CLion
        ${SOURCE_FILES}
        ${HEADER_FILES}
        ${SHADER_FILES}
      )

target_link_libraries(CLion "-framework OpenGL")
target_link_libraries(CLion "-framework GLUT")

