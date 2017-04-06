#pragma once

struct SDL_Window;

// todo: how to inline?
namespace Error {
    void check(SDL_Window* window);
    void SDL();
}
