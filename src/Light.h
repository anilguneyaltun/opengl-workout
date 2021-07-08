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
    Light(GLfloat red, GLfloat green, GLfloat blue, GLfloat aIntensity);
    void useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc);
    ~Light();

private:
    glm::vec3 color{};
    GLfloat ambientIntensity{};

};



#endif //MAIN_CPP_LIGHT_H
