project(graphics)

find_package(glm REQUIRED)
find_package(assimp REQUIRED)

set(SOURCE_FILES src/Public/Renderer.h src/Public/Shader.h src/Private/Shader.cpp)
add_library(_graphics ${SOURCE_FILES})
target_include_directories(_graphics PUBLIC ${GLAD_INCLUDE_DIRS})
target_include_directories(_graphics PUBLIC ${GLM_INCLUDE_DIRS})
target_include_directories(_graphics PUBLIC ${ASSIMP_INCLUDE_DIRS})
target_include_directories(_graphics PUBLIC src/Public)
target_link_libraries(_graphics PRIVATE _log)
target_link_libraries(_graphics PRIVATE ${GLAD_LIBRARIES})
target_link_libraries(_graphics PRIVATE "${ASSIMP_LIBRARY_DIRS}/${ASSIMP_LIBRARIES}")
