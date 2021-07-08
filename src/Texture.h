//
// Created by anilguneyaltun on 29.05.2021.
//

#ifndef MAIN_CPP_TEXTURE_H
#define MAIN_CPP_TEXTURE_H

#include "glew.h"
#include "stb_image.h"

class Texture
{

public:
    Texture();
    Texture(char *fileLoc);

    void loadTexture();
    void useTexture();
    void clearTexture();
    ~Texture();


private:
    GLuint texID;
    int width, height, bitDepth;

    char* fileLocation;
};


#endif //MAIN_CPP_TEXTURE_H
