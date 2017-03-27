project(windows)

find_package(SDL2 REQUIRED)
#find_library(LOG _log)
#find_library(GRAPHICS _graphics)

set(SOURCE_FILES src/Public/Window.h src/Private/Window.cpp src/Public/ErrorHandler.h src/Private/ErrorHandler.cpp)
add_library(_windows ${SOURCE_FILES})
target_include_directories(_windows PUBLIC src/Public)
target_include_directories(_windows PRIVATE ${graphics_SOURCE_DIR}/src/Public)
target_include_directories(_windows PRIVATE ${SDL2_INCLUDE_DIR})
target_link_libraries(_windows PRIVATE _log)
target_link_libraries(_windows PRIVATE _graphics)
target_link_libraries(_windows PRIVATE ${SDL2_LIBRARY})
