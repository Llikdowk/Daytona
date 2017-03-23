cmake_minimum_required(VERSION 3.6)
project(Daytona)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wextra")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/cmake")
add_subdirectory(src)
add_subdirectory(testsuite)
add_subdirectory(thirdparty/googletest)
add_subdirectory(thirdparty/glm)
