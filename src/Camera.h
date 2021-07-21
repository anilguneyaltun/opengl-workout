//
// Created by anilguneyaltun on 24.05.2021.
//

#ifndef MAIN_CPP_CAMERA_H
#define MAIN_CPP_CAMERA_H

#include "glew.h"
#include "glm.hpp"
#include "gtc/matrix_transform.hpp"
#include "glfw3.h"

class Camera
{
public:
    Camera();
    Camera(glm::vec3 startPosition, glm::vec3 startUp, GLfloat startYaw, GLfloat startPitch, GLfloat startMoveSpeed, GLfloat startTurnSpeed);
    void keyControl(bool *keys, GLfloat dt);
    void mouseControl(GLfloat xChange, GLfloat yChange);

    glm::vec3 getCameraDirection();

    glm::vec3 getCameraPosition();
    glm::mat4 calculateViewMatrix();

    ~Camera();

private:
    glm::vec3 position;
    glm::vec3 front;
    glm::vec3 up;
    glm::vec3 right;
    glm::vec3 worldUp;

    GLfloat yaw;
    GLfloat pitch;

    GLfloat movementSpeed;
    GLfloat turnSpeed;

    void update();
};


#endif //MAIN_CPP_CAMERA_H
