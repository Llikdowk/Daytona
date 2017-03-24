project(WindowSystem)

find_package(SDL2 REQUIRED)
if (SDL2_FOUND)
    message(SDL2 FOUND!)
endif(SDL2_FOUND)
set(SDL2_INCLUDE_DIR "D:/Libs/SDL2-2.0.5_mingw/x86_64-w64-mingw32/include")
set(SDL2_LIBRARY "D:/Libs/SDL2-2.0.5_mingw/x86_64-w64-mingw32/lib/libSDL2.a D:/Libs/SDL2-2.0.5_mingw/x86_64-w64-mingw32/lib/libSDL2main.a")
message("SDL2_FOUND = ${SDL2_FOUND}")
message("SDL2_INCLUDE_DIR = ${SDL2_INCLUDE_DIR}")
message("SDL2_LIBRARY = ${SDL2_LIBRARY}")

set(SOURCE_FILES Public/Log.h Public/Window.h Private/Window.cpp)

add_library(libWindowSystem STATIC ${SOURCE_FILES})
set_target_properties(libWindowSystem PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(libWindowSystem PUBLIC Public)
target_link_libraries(libWindowSystem ${SDL2_LIBRARY})
