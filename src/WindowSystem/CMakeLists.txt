project(WindowSystem)

find_package(SDL2 REQUIRED)

include_directories(Public)
include_directories(${SDL2_INCLUDE_DIR})
set(SOURCE_FILES Public/Window.h Private/Window.cpp)

add_library(libWindowSystem STATIC ${SOURCE_FILES})
set_target_properties(libWindowSystem PROPERTIES LINKER_LANGUAGE CXX)
target_link_libraries(libWindowSystem ${SDL2_LIBRARY})