//
// Created by anilguneyaltun on 8.07.2021.
//

#include "Light.h"

Light::Light()
{
    color = glm::vec3(1.0f, 1.0f, 1.0f);
    ambientIntensity = 1.0f;
}

Light::Light(GLfloat red, GLfloat green, GLfloat blue, GLfloat aIntensity)
{
    color = glm::vec3(red, green, blue);
    ambientIntensity = aIntensity;
}

void Light::useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc)
{
    glUniform3f(ambientColorLoc, color.x, color.y, color.z);
    glUniform1f(ambientIntensityLoc, ambientIntensity);
}

Light::~Light()
{

}
