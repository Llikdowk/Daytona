project(Daytona)
add_subdirectory(WindowSystem)
add_subdirectory(GraphicsEngine)

set(SOURCE_FILES EntryPoint.cpp)
add_executable(Daytona ${SOURCE_FILES})
target_link_libraries(Daytona libGraphicsEngine)
target_link_libraries(Daytona libWindowSystem) # redirects std::out,err to custom locations
