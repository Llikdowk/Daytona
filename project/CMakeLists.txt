project(Daytona)

add_subdirectory(graphics)
#add_subdirectory(windows)

set(SOURCE_FILES EntryPoint.cpp)
add_executable(Daytona ${SOURCE_FILES})
target_link_libraries(Daytona lib_graphics)
#target_compile_definitions(Daytona lib_windows)
