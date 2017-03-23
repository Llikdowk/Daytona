#pragma once
#include <SDL2/SDL.h>
#include <string>

namespace Log {
    template <typename... Args>
    void message(const char* msg, Args... args) {
        SDL_Log(msg, args...);
    }

    template <typename... Args>
    void warning(const char* msg, Args... args) {
        SDL_LogWarn(SDL_LOG_CATEGORY_APPLICATION, msg, args...);
    };

    template <typename... Args>
    void error(const char* msg, Args... args) {
        SDL_LogError(SDL_LOG_CATEGORY_APPLICATION, msg, args...);
    }

}
