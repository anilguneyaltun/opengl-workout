//
// Created by anilguneyaltun on 8.07.2021.
//

#include "Light.h"

Light::Light()
{
    color = glm::vec3(1.0f, 1.0f, 1.0f);
    ambientIntensity = 1.0f;
    direction = glm::vec3(0.0f, -1.0f, -0.5f);
    diffuseIntensity = 0.0f;
}

Light::Light(GLfloat red, GLfloat green, GLfloat blue, GLfloat aIntensity,
             GLfloat xDir, GLfloat yDir, GLfloat zDir, GLfloat dIntensity )
{
    color = glm::vec3(red, green, blue);
    ambientIntensity = aIntensity;

    direction = glm::vec3(xDir, yDir, zDir);
    diffuseIntensity = dIntensity;
}

void Light::useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc,
                     GLfloat diffuseIntensityLoc, GLfloat directionLoc)
{
    glUniform3f(ambientColorLoc, color.x, color.y, color.z);
    glUniform1f(ambientIntensityLoc, ambientIntensity);
    glUniform3f(directionLoc, direction.x,direction.y, direction.z );
    glUniform1f(diffuseIntensityLoc, diffuseIntensity);
}

Light::~Light()
{

}
