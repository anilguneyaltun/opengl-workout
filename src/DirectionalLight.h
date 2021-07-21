//
// Created by anilguneyaltun on 19.07.2021.
//

#ifndef CLION_DIRECTIONALLIGHT_H
#define CLION_DIRECTIONALLIGHT_H
#include "Light.h"

class DirectionalLight : public Light
{
public:
    DirectionalLight();

    DirectionalLight(GLfloat red, GLfloat green, GLfloat blue,
                     GLfloat aIntensity, GLfloat dIntensity,
                     GLfloat xDir, GLfloat yDir, GLfloat zDir);

    void useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc,
                  GLfloat diffuseIntensityLoc, GLfloat directionLoc);

    ~DirectionalLight();

private:
    glm::vec3 direction;
};


#endif //CLION_DIRECTIONALLIGHT_H
