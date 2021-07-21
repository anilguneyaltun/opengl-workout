//
// Created by anilguneyaltun on 13.07.2021.
//

#ifndef CLION_MATERIAL_H
#define CLION_MATERIAL_H
#include "glew.h"

class Material
{
public:
    Material();
    Material(GLfloat sIntensity, GLfloat shine);
    void useMaterial(GLuint specularIntLoc, GLuint shininessLoc);
    ~Material();

private:
    GLfloat specularIntensity; //how bright the light is
    GLfloat shininess;

};


#endif //CLION_MATERIAL_H
