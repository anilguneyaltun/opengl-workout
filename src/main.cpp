#define STB_IMAGE_IMPLEMENTATION

#include <cmath>
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
#include "Texture.h"
#include "Light.h"

GLfloat dT = 0.0f;
GLfloat lastTime = 0.0f;

const float toRad = 3.14159265f / 180.0f;

GLWindow mainWindow;
std::vector<Mesh*> meshList;
std::vector<Shader> shaderList;
Camera camera;
Light mainLight;

Texture brickTex;
Texture dirtTexture;

static const char *vShader = "../src/vshader.glsl";
static const char *fShader = "../src/fshader.glsl";

void createObjects()
{
    unsigned int indices[] = {
            0, 3, 1,
            1, 3, 2,
            2, 3, 0,
            0, 1, 2
    };

    GLfloat vertices[] = {
            //	x      y      z			u	  v
            -1.0f, -1.0f, 0.0f,		0.0f, 0.0f,
            0.0f, -1.0f, 1.0f,		0.5f, 0.0f,
            1.0f, -1.0f, 0.0f,		1.0f, 0.0f,
            0.0f, 1.0f, 0.0f,		0.5f, 1.0f
    };

    Mesh *obj1 = new Mesh();
    obj1->createMesh(vertices, indices, 20, 12);
    meshList.push_back(obj1);

    Mesh *obj2 = new Mesh();
    obj2->createMesh(vertices, indices, 0, 0);
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
        uniformAmbientColor = shaderList[0].getAmbientColorLocation();
        uniformAmbientIntensity = shaderList[0].getAmbientIntensityLocation();

        mainLight.useLight(uniformAmbientIntensity, uniformAmbientColor);

        glm::mat4 model(1.0f);

        model = glm::translate(model, glm::vec3(0.0f, 0.0f, -2.5f));
        model = glm::scale(model, glm::vec3(0.4f, 0.4f, 1.0f));
        glUniformMatrix4fv(uniformModel, 1, GL_FALSE, glm::value_ptr(model));
        glUniformMatrix4fv(uniformProjection, 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(uniformView, 1, GL_FALSE, glm::value_ptr(camera.calculateViewMatrix()));
        brickTex.useTexture();
        meshList[0]->renderMesh();

        model = glm::mat4(1.0f);
        model = glm::translate(model, glm::vec3(0.0f, 1.0f, -2.5f));
        model = glm::scale(model, glm::vec3(0.4f, 0.4f, 1.0f));
        glUniformMatrix4fv(uniformModel, 1, GL_FALSE, glm::value_ptr(model));
        dirtTexture.useTexture();
        meshList[1]->renderMesh();

        glUseProgram(0);

        mainWindow.swapBuffers();

    }

    return 0;
}