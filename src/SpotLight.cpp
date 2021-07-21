//
// Created by anilguneyaltun on 21.07.2021.
//

#include "SpotLight.h"

SpotLight::SpotLight() : PointLight()
{
    direction = glm::vec3(0.0f, -1.0f, 0.0f);
    edge = 0.0f;
}

SpotLight::SpotLight(GLfloat red, GLfloat green, GLfloat blue, GLfloat aIntensity, GLfloat dIntensity,
                     GLfloat xPos,GLfloat yPos, GLfloat zPos,
                     GLfloat xDir, GLfloat yDir, GLfloat zDir,
                     GLfloat con, GLfloat lin,GLfloat exp,
                     GLfloat edge) : PointLight(red, green, blue, aIntensity, dIntensity, xPos, yPos, zPos, con, lin, exp)
{
    direction = glm::normalize(glm::vec3(xDir, yDir, zDir));

    this->edge = edge;
    procEdge = cosf(glm::radians(this->edge));
}

void SpotLight::useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc, GLfloat diffuseIntensityLoc,
                         GLfloat positionLoc, GLfloat directionLoc, GLfloat conLoc, GLfloat linLoc, GLfloat expLoc,
                         GLfloat edgeLoc)
{
    glUniform3f(ambientColorLoc, color.x, color.y, color.z);
    glUniform1f(ambientIntensityLoc, ambientIntensity);
    glUniform1f(diffuseIntensityLoc, diffuseIntensity);

    glUniform3f(positionLoc, position.x, position.y, position.z);
    glUniform1f(conLoc, constant);
    glUniform1f(linLoc, linear);
    glUniform1f(expLoc, exponent);

    glUniform3f(directionLoc, direction.x, direction.y, direction.z);
    glUniform1f(edgeLoc, procEdge);
}

void SpotLight::setFlash(glm::vec3 pos, glm::vec3 dir)
{
    position = pos;
    direction = dir;


}

SpotLight::~SpotLight()
{

}


