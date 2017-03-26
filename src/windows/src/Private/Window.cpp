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
}

void Window::show() {
    Log::message("show");
}