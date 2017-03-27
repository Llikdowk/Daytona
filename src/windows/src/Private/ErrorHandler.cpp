#include "ErrorHandler.h"
#include <Log.h>
#include <SDL.h>

void Error::check(SDL_Window* window) {
    if (!window) {
        Log::error("Window creation failed");
    }
}

void Error::SDL() {
    const char* errorMsg = SDL_GetError();
    if (strcmp(errorMsg, "") != 0) {
        Log::error("SDL: ", errorMsg);
        SDL_ClearError();
    }
}