#pragma once

struct SDL_Window;

namespace Error {
    void check(SDL_Window* window);
    void SDL();
}
