#include <gtest/gtest.h>

TEST(sanity_check, one) {
    EXPECT_EQ(1, 1);
}

TEST(sanity_check, fail) {
    EXPECT_EQ(0, 1);
}
