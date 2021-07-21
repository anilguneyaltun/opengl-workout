//
// Created by anilguneyaltun on 19.07.2021.
//

#ifndef CLION_POINTLIGHT_H
#define CLION_POINTLIGHT_H
#include "Light.h"

class PointLight : public Light
{
public:
    PointLight();
    PointLight(GLfloat red, GLfloat green, GLfloat blue,
               GLfloat aIntensity, GLfloat dIntensity,
               GLfloat xPos, GLfloat yPos, GLfloat zPos,
               GLfloat con, GLfloat lin, GLfloat exp);

    void useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc,
                  GLfloat diffuseIntensityLoc, GLfloat positionLoc, GLfloat conLoc, GLfloat linLoc, GLfloat expLoc);
    ~PointLight();

protected:
    glm::vec3 position;
    GLfloat constant, linear, exponent;


};


#endif //CLION_POINTLIGHT_H
