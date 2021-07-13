//
// Created by anilguneyaltun on 8.07.2021.
//

#ifndef MAIN_CPP_LIGHT_H
#define MAIN_CPP_LIGHT_H

#include "glm.hpp"
#include "glew.h"

class Light
{
public:
    Light();
    Light(GLfloat red, GLfloat green, GLfloat blue, GLfloat aIntensity,
          GLfloat xDir, GLfloat yDir, GLfloat zDir, GLfloat dIntensity);
    void useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc,
                  GLfloat diffuseIntensityLoc, GLfloat directionLoc);
    ~Light();

private:
    glm::vec3 color{};
    GLfloat ambientIntensity{};

    glm::vec3 direction;
    GLfloat diffuseIntensity;

};



#endif //MAIN_CPP_LIGHT_H
