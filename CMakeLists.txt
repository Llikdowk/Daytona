project(ROOT)
cmake_minimum_required(VERSION 3.6)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wextra -m64")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)

include(cmake/utils.cmake)

file(COPY resources DESTINATION src)

message("<thirdparty>")
message("<GLAD>")
add_subdirectory(thirdparty/glad)
message("</GLAD>")
message("<SDL>")
add_subdirectory(thirdparty/SDL2-2.0.5)
message("</SDL>")
message("<GLM>")
add_subdirectory(thirdparty/glm)
message("</GLM>")
message("<ASSIMP>")
set( ASSIMP_LIB_INSTALL_DIR "code" CACHE STRING
        "Path the built library files are installed to." )
file(COPY "thirdparty/assimp/include" DESTINATION thirdparty/assimp)
set(assimp_DIR "${CMAKE_BINARY_DIR}/thirdparty/assimp")
add_subdirectory(thirdparty/assimp)
message("</ASSIMP>")
message("<googletest>")
add_subdirectory(thirdparty/googletest)
message("</googletest>")
message("</thirdparty>")

message("<src>")
add_subdirectory(src)
message("</src>")

message("<test>")
add_subdirectory(test)
message("</test>")

#[[
install instructions:
1. build glad
2. build sdl (static and SDLmain)
3. build assimp
]]

