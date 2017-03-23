project(testsuite)

include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
set(TEST_FILES SanityCheck.cpp)
add_executable(test_sanityCheck ${TEST_FILES})
target_link_libraries(test_sanityCheck gtest gtest_main)
