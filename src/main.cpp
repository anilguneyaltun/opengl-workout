#include <vector>

#include <glew.h>
#include <glfw3.h>

#include "glm.hpp"
#include "gtc/matrix_transform.hpp"
#include "gtc/type_ptr.hpp"

#include "GLWindow.h"
#include "Mesh.h"
#include "Shader.h"
#include "Camera.h"

GLfloat dT = 0.0f;
GLfloat lastTime = 0.0f;

const float toRad = 3.14159265f / 180.0f;

GLWindow mainWindow;
std::vector<Mesh*> meshList;
std::vector<Shader> shaderList;
Camera camera;

static const char *vShader = "../src/vshader.glsl";
static const char *fShader = "../src/fshader.glsl";

void createObjects()
{
    unsigned int indices[] = {
            0,1,3,
            3,1,2,
            4,5,7,
            7,5,6,
            8,9,11,
            11,9,10,
            12,13,15,
            15,13,14,
            16,17,19,
            19,17,18,
            20,21,23,
            23,21,22
    };

    GLfloat vertices[] = {
            -0.5f,0.5f,-0.5f,
            -0.5f,-0.5f,-0.5f,
            0.5f,-0.5f,-0.5f,
            0.5f,0.5f,-0.5f,

            -0.5f,0.5f,0.5f,
            -0.5f,-0.5f,0.5f,
            0.5f,-0.5f,0.5f,
            0.5f,0.5f,0.5f,

            0.5f,0.5f,-0.5f,
            0.5f,-0.5f,-0.5f,
            0.5f,-0.5f,0.5f,
            0.5f,0.5f,0.5f,

            -0.5f,0.5f,-0.5f,
            -0.5f,-0.5f,-0.5f,
            -0.5f,-0.5f,0.5f,
            -0.5f,0.5f,0.5f,

            -0.5f,0.5f,0.5f,
            -0.5f,0.5f,-0.5f,
            0.5f,0.5f,-0.5f,
            0.5f,0.5f,0.5f,

            -0.5f,-0.5f,0.5f,
            -0.5f,-0.5f,-0.5f,
            0.5f,-0.5f,-0.5f,
            0.5f,-0.5f,0.5f
    };

    Mesh *obj1 = new Mesh();
    obj1->createMesh(vertices, indices, 256, 256);
    meshList.push_back(obj1);

    Mesh *obj2 = new Mesh();
    obj2->createMesh(vertices, indices, 12, 12);
    meshList.push_back(obj2);
}

void createShaders(){
    Shader *shader1 = new Shader();
    shader1->createFromFiles(vShader, fShader);
    shaderList.push_back(*shader1);
}

int main()
{
    mainWindow = GLWindow(800, 600);
    mainWindow.init();

    createObjects();
    createShaders();

    camera = Camera(glm::vec3(0.0f,0.0f, 0.0f), glm::vec3(0.0f, 1.0f, 0.0), -90.0f, 0.0f, 3.0f, .05f);


    brickTex = Texture("/Users/guney/Developer/CLion/Textures/brick.png");
    brickTex.loadTexture();
    dirtTexture = Texture("/Users/guney/Developer/CLion/Textures/dirt.png");
    dirtTexture.loadTexture();

    mainLight = Light(1.0f, 1.0f, 1.0f, .6f);


    GLuint uniformProjection = 0, uniformModel = 0, uniformView = 0, uniformAmbientIntensity = 0, uniformAmbientColor = 0;
    glm::mat4 projection = glm::perspective(glm::radians(45.0f), (GLfloat)mainWindow.getBufferWidth() / mainWindow.getBufferHeight(), 0.1f, 100.0f);

    while (!mainWindow.getShouldClose())
    {

        GLfloat currentTime = glfwGetTime();
        dT = currentTime - lastTime;
        lastTime = currentTime;

        glfwPollEvents();
        camera.keyControl(mainWindow.getKeys(), dT);
        camera.mouseControl(mainWindow.getXChange(), mainWindow.getYChange());


        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        shaderList[0].useShader();
        uniformModel = shaderList[0].getModelLocation();
        uniformProjection = shaderList[0].getProjectionLocation();
        uniformView = shaderList[0].getViewLocation();

        glm::mat4 model(1.0f);

        model = glm::translate(model, glm::vec3(0.0f, 0.0f, -2.5f));
        model = glm::scale(model, glm::vec3(0.4f, 0.4f, 1.0f));
        model = glm::rotate(model, (float)sin(glfwGetTime()) * 6.0f, glm::vec3(0.0f, 1.0f, 0.0f));
        glUniformMatrix4fv(uniformModel, 1, GL_FALSE, glm::value_ptr(model));
        glUniformMatrix4fv(uniformProjection, 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(uniformView, 1, GL_FALSE, glm::value_ptr(camera.calculateViewMatrix()));
        meshList[0]->renderMesh();
/*
        model = glm::mat4(1.0f);
        model = glm::translate(model, glm::vec3(0.0f, 1.0f, -2.5f));
        model = glm::scale(model, glm::vec3(0.4f, 0.4f, 1.0f));
        glUniformMatrix4fv(uniformModel, 1, GL_FALSE, glm::value_ptr(model));
        meshList[1]->renderMesh();
*/
        glUseProgram(0);

        mainWindow.swapBuffers();

    }

    return 0;
}