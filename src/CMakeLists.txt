project(src)

add_subdirectory(WindowSystem)
#find_package(OpenGL REQUIRED)

include_directories(WindowSystem/Public)
set(SOURCE_FILES EntryPoint.cpp)
add_executable(Daytona ${SOURCE_FILES})
target_link_libraries(Daytona libWindowSystem)
