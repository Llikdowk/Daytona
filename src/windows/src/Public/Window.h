#pragma once

class Window {
    static class StaticConstructor {
    public:
        StaticConstructor();
    } WindowStaticConstructor;

public:

    Window();
    void show();

};