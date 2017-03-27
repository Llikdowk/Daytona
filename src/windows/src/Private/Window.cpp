#include "Window.h"
#include "ErrorHandler.h"
#include <Log.h>
#include <Renderer.h>
#include <SDL.h>
#include <cstdlib>
#include <iostream>

Window::StaticConstructor::StaticConstructor() {
    if (SDL_Init(SDL_INIT_VIDEO) != 0){
        Error::SDL();
    }

    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 4);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 5);
    SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8);
    std::atexit(SDL_Quit);
}

Window::StaticConstructor Window::WindowStaticConstructor;

Window::Window() {
    canvas = SDL_CreateWindow("DaytonaEngine", SDL_WINDOWPOS_UNDEFINED,SDL_WINDOWPOS_UNDEFINED,
                              800, 600,
                              SDL_WINDOW_OPENGL);
    Error::check(canvas);
}

Window::~Window() {
    SDL_DestroyWindow(canvas);
    Error::SDL();
}

void Window::show() {
    SDL_GLContext context = SDL_GL_CreateContext(canvas);
    SDL_Event windowEvent;
    Renderer::initialize(SDL_GL_GetProcAddress);

    // use v-sync
    SDL_GL_SetSwapInterval(1);

    while (true)
    {
        if (SDL_PollEvent(&windowEvent))
        {
            if (windowEvent.type == SDL_QUIT) break;
        }

        Renderer::draw();
        SDL_GL_SwapWindow(canvas);

        if (windowEvent.type == SDL_KEYUP &&
            windowEvent.key.keysym.sym == SDLK_ESCAPE) break;
    }

    SDL_GL_DeleteContext(context);
}