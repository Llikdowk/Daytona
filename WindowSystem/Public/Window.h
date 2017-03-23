#pragma once

#include "Log.h"
#include <SDL2/SDL.h>
#include <iostream>
#include <memory>
#include <string>

class Window {
    static class StaticConstructor {
    public:
        StaticConstructor();
    } WindowStaticConstructor;

public:

    Window();
    void show();

};