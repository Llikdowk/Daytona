project(windows)

find_package(SDL2 REQUIRED)

set(SOURCE_FILES src/Public/Log.h src/Public/Window.h src/Private/Window.cpp)
add_library(_windows ${SOURCE_FILES})
target_include_directories(_windows PUBLIC src/Public)
target_include_directories(_windows PUBLIC ${SDL2_INCLUDE_DIR})
target_link_libraries(_windows ${SDL2_LIBRARY})