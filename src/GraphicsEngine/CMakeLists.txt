project(GraphicsEngine)

find_package(OpenGL REQUIRED)
find_package(glm REQUIRED)

set(SOURCE_FILES Public/Test.h Private/Test.cpp)
add_library(libGraphicsEngine STATIC ${SOURCE_FILES})
set_target_properties(libGraphicsEngine PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(libGraphicsEngine PUBLIC Public)
target_include_directories(libGraphicsEngine PUBLIC ${GLM_INCLUDE_DIRS})
get_target_include(libGraphicsEngine)
