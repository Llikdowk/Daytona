cmake_minimum_required(VERSION 3.6)
project(Daytona)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wextra")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/cmake-find")
find_package(OpenGL REQUIRED)

add_subdirectory(WindowSystem)

include_directories(WindowSystem/Public)
set(SOURCE_FILES main.cpp)
add_executable(Daytona ${SOURCE_FILES})
target_link_libraries(Daytona libWindowSystem)