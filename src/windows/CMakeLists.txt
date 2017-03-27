project(windows)

find_package(SDL2 REQUIRED)

set(SOURCE_FILES src/Public/Window.h src/Private/Window.cpp)
add_library(_windows ${SOURCE_FILES})
target_include_directories(_windows PUBLIC src/Public)
target_include_directories(_windows PRIVATE ${GLAD_INCLUDE_DIRS})
target_include_directories(_windows PRIVATE ${SDL2_INCLUDE_DIR})
target_link_libraries(_windows PRIVATE _log)
target_link_libraries(_windows PRIVATE ${GLAD_LIBRARIES})
target_link_libraries(_windows PRIVATE ${SDL2_LIBRARY})
