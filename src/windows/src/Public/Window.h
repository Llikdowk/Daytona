#pragma once

struct SDL_Window;

class Window {
    using Canvas = SDL_Window;

    static class StaticConstructor {
    public:
        StaticConstructor();
    } WindowStaticConstructor;

public:
    Window();
    ~Window();
    void show();

private:
    Canvas* canvas;
};