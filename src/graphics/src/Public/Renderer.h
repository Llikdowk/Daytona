#pragma once

#include <Log.h>
#include <glad/glad.h>

typedef void* (* GLADloadproc)(const char *name);
namespace Renderer {

    void showInfo() {
        Log::message("Vendor:   %s\n", glGetString(GL_VENDOR));
        Log::message("Renderer: %s\n", glGetString(GL_RENDERER));
        Log::message("Version:  %s\n", glGetString(GL_VERSION));
    }

    void initialize(GLADloadproc proc) {
        Log::message("OpenGL loaded\n");
        gladLoadGLLoader(proc);

        glDisable(GL_DEPTH_TEST);
        glDisable(GL_CULL_FACE);
        glClearColor(0.1f, 0.1f, 0.1f, 0.0f);
        showInfo();
    }

    void draw() {
        glClear(GL_COLOR_BUFFER_BIT);
    }

}