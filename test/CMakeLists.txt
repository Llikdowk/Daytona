project(integration_tests)

include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
set(TEST_FILES sanity_check.cpp)
add_executable(test_integration ${TEST_FILES})
target_link_libraries(test_integration gtest gtest_main)
