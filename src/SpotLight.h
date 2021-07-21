//
// Created by anilguneyaltun on 21.07.2021.
//

#ifndef CLION_SPOTLIGHT_H
#define CLION_SPOTLIGHT_H
#include "PointLight.h"

class SpotLight : PointLight
{
public:
    SpotLight();
    ~SpotLight();

    SpotLight(GLfloat red, GLfloat green, GLfloat blue,
              GLfloat aIntensity, GLfloat dIntensity,
              GLfloat xPos, GLfloat yPos, GLfloat zPos,
              GLfloat xDir, GLfloat yDir, GLfloat zDir,
              GLfloat con, GLfloat lin, GLfloat exp, GLfloat edge);

    void useLight(GLfloat ambientIntensityLoc, GLfloat ambientColorLoc,
                  GLfloat diffuseIntensityLoc, GLfloat positionLoc, GLfloat directionLoc,
                  GLfloat conLoc, GLfloat linLoc, GLfloat expLoc, GLfloat edgeLoc);

    void setFlash(glm::vec3 pos, glm::vec3 dir);

private:
    glm::vec3 direction;
    GLfloat edge, procEdge;


};


#endif //CLION_SPOTLIGHT_H
