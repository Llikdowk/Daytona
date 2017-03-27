#include "Window.h"
#include <Log.h>
#include <SDL.h>
#include <cstdlib>
#include <iostream>

Window::StaticConstructor::StaticConstructor() {
    if (SDL_Init(SDL_INIT_VIDEO) != 0){
        std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
        //TODO error handler
    }
    Log::message("static constructor");
    std::atexit(SDL_Quit);
}
Window::StaticConstructor Window::WindowStaticConstructor;

Window::Window() {
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 2);
    SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8);
}

void Window::show() {
    Log::message("show");

    SDL_Window* window = SDL_CreateWindow("OpenGL", 100, 100, 800, 600, SDL_WINDOW_OPENGL);

    SDL_GLContext context = SDL_GL_CreateContext(window);

    SDL_Event windowEvent;
    while (true)
    {
        if (SDL_PollEvent(&windowEvent))
        {
            if (windowEvent.type == SDL_QUIT) break;
        }

        SDL_GL_SwapWindow(window);

        if (windowEvent.type == SDL_KEYUP &&
            windowEvent.key.keysym.sym == SDLK_ESCAPE) break;
    }

    SDL_GL_DeleteContext(context);
}