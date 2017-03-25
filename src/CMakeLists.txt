project(Daytona)

#add_subdirectory(graphics)
add_subdirectory(windows)

set(SOURCE_FILES EntryPoint.cpp)
add_executable(Daytona ${SOURCE_FILES})
#target_include_directories(Daytona PUBLIC graphics/src/Public)
target_include_directories(Daytona PUBLIC windows/src/Public)
#target_link_libraries(Daytona lib_graphics)
target_link_libraries(Daytona lib_windows)
