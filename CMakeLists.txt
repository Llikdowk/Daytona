project(ROOT)
cmake_minimum_required(VERSION 3.6)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wextra -m64")
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)

include(cmake/utils.cmake)

message("<SDL2>")
add_subdirectory(thirdparty/SDL2-2.0.5)
message("</SDL2>")

message("<src>")
add_subdirectory(src)
message("</src>")
