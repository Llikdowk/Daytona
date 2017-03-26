#include "Test.h"
#include <iostream>
#include <glm/vec2.hpp>
#include <Log.h>


void tt::test() {
    glm::vec2 t(1,1);
    Log::message("test, v.x = %f", t.x);
    std::cout << t.x << std::endl;
    std::cout << "test" << std::endl;
}



