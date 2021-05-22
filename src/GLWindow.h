//
// Created by anilguneyaltun on 22.05.2021.
//
#include <stdio.h>
#include <glew.h>
#include <glfw3.h>


#ifndef MAIN_CPP_GLWINDOW_H
#define MAIN_CPP_GLWINDOW_H


class GLWindow {
public:
    GLWindow();
    GLWindow(GLint windowWidth, GLint windowHeight);

    int init();

    GLfloat getBufferWidth(){return bufferWidth;}
    GLfloat getBufferHeight(){return bufferHeight;}

    bool getShouldClose(){return glfwWindowShouldClose(mainWindow);}

    void swapBuffers(){ glfwSwapBuffers(mainWindow);}

    ~GLWindow();

private:
    GLFWwindow *mainWindow;
    GLint width, height;
    GLint bufferWidth, bufferHeight;
};


#endif //MAIN_CPP_GLWINDOW_H
