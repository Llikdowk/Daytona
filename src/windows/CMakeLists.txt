project(windows)

find_package(SDL2 REQUIRED)

set(SOURCE_FILES src/Public/Log.h src/Public/Window.h src/Private/Window.cpp)
add_library(lib_windows ${SOURCE_FILES})
target_include_directories(lib_windows PUBLIC src/Public)
target_include_directories(lib_windows PUBLIC ${SDL2_INCLUDE_DIR})
target_link_libraries(lib_windows ${SDL2_LIBRARY})