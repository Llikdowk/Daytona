#pragma once

struct SDL_Window;

class Window {
    static class StaticConstructor {
    public:
        StaticConstructor();
    } WindowStaticConstructor;

public:
    Window();
    ~Window();
    void show();

private:
    using Canvas = SDL_Window;
    Canvas* canvas;
};