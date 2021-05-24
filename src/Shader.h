//
// Created by anilguneyaltun on 21.05.2021.
//

#ifndef MAIN_CPP_SHADER_H
#define MAIN_CPP_SHADER_H

#include <stdio.h>
#include <string>
#include <iostream>
#include <fstream>

#include <glew.h>

class Shader {

public:
    Shader();

    void createFromString(const char *vertexCode, const char *fragCode);

    GLuint getProjectionLocation();

    GLuint getModelLocation();

    GLuint getViewLocation();

    void createFromFiles(const char *vertexLocation, const char *fragLocation);

    std::string readFile(const char *fileLocation);

    void useShader();

    void clearShader();

    ~Shader();

private:
    GLuint shaderID, uniformProjection, uniformModel, uniformView;

    void compileShader(const char *vertexCode, const char *fragCode);
    void addShader(GLuint theProgram, const char* shaderCode, GLenum shaderType);

};


#endif //MAIN_CPP_SHADER_H
