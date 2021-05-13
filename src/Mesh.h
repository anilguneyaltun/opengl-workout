//
// Created by anilguneyaltun on 13.05.2021.
//

#ifndef MAIN_CPP_MESH_H
#define MAIN_CPP_MESH_H

#include "glew.h"

class Mesh {

public:
    Mesh();
    ~Mesh();

    void createMesh(GLfloat *vertices, unsigned int *indices, unsigned int numOfVertices, unsigned int numOfIndices);
    void renderMesh();
    void clearMesh();

private:
    GLuint VAO, VBO, IBO;
    GLsizei indexCount;

};


#endif //MAIN_CPP_MESH_H
