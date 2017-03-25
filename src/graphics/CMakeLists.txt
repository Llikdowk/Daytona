project(graphics)

set(SOURCE_FILES src/Public/Test.h src/Private/Test.cpp)
add_library(lib_graphics ${SOURCE_FILES})
target_include_directories(lib_graphics PUBLIC include/)
target_include_directories(lib_graphics PUBLIC src/Public)

