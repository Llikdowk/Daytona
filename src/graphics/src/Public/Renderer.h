#pragma once

#include "Shader.h"
#include "ErrorHandler.h"
#include <Log.h>
#include <glad/glad.h>

typedef void* (*GLADloadproc)(const char *name);
namespace Renderer {

    void showInfo() {
        Log::message("Vendor:   %s\n", glGetString(GL_VENDOR));
        Log::message("Renderer: %s\n", glGetString(GL_RENDERER));
        Log::message("Version:  %s\n", glGetString(GL_VERSION));
    }

    enum VAO_IDs {Triangles, NumVAOs};
    enum Buffer_IDs {ArrayBuffer, NumBuffers};
    enum Attrib_IDs {vPosition = 0};
    GLuint VAOs[NumVAOs];
    GLuint Buffers[NumBuffers];
    const GLuint NumVertices = 6;

    void initialize(GLADloadproc proc) {
        Log::message("OpenGL loaded\n");
        gladLoadGLLoader(proc);

        glDisable(GL_DEPTH_TEST);
        glDisable(GL_CULL_FACE);
        glClearColor(0.1f, 0.1f, 0.1f, 0.0f);
        showInfo();

        glGenVertexArrays(NumVAOs, VAOs);
        glBindVertexArray(VAOs[Triangles]);
        GLfloat vertices[NumVertices][2] = {
            { -0.90, -0.90 }, // Triangle 1
            { 0.85, -0.90 },
            { -0.90, 0.85 },
            { 0.90, -0.85 }, // Triangle 2
            { 0.90, 0.90 },
            { -0.85, 0.90 }
        };
        glGenBuffers(NumBuffers, Buffers);
        glBindBuffer(GL_ARRAY_BUFFER, Buffers[ArrayBuffer]);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices),
        vertices, GL_STATIC_DRAW);

        ShaderProgram program;
        try {

            Shader shader(Shader::Type::Vertex);
            shader.load("./resources/shaders/triangles/triangles.vert");
            shader.compile();

            Shader shader2(Shader::Type::Fragment);
            shader2.load("./resources/shaders/triangles/triangles.frag");
            shader2.compile();

            program.addShader(shader);
            program.addShader(shader2);
            program.link();

        } catch (const ShaderException& e) {
            Log::error(e.what());
        }

        glUseProgram(program.getHandler());
        glVertexAttribPointer(vPosition, 2, GL_FLOAT, GL_FALSE, 0, 0);
        glEnableVertexAttribArray(vPosition);
    }

    void draw() {
        glClear(GL_COLOR_BUFFER_BIT);
        glBindVertexArray(VAOs[Triangles]);
        glDrawArrays(GL_TRIANGLES, 0, NumVertices);    }

}