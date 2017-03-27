#pragma once

struct SDL_Window;

namespace Error {
    extern void check(SDL_Window* window);
    extern void SDL();
}
