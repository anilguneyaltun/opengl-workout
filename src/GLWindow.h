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

    bool *getKeys() {return keys;}
    GLfloat getXChange();
    GLfloat getYChange();

    void swapBuffers(){ glfwSwapBuffers(mainWindow);}

    ~GLWindow();

private:
    GLFWwindow *mainWindow;
    GLint width, height;
    GLint bufferWidth, bufferHeight;

    bool keys[1024];

    GLfloat lastX;
    GLfloat lastY;
    GLfloat xChange;
    GLfloat yChange;
    bool mouseMoved;


    void createCallBacks();

    static void handleKeys(GLFWwindow *window, int key, int code, int action, int mode);
    static void handleMouse(GLFWwindow *window, double xPos, double yPos);
};


#endif //MAIN_CPP_GLWINDOW_H
