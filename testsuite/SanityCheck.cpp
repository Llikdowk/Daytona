#include <gtest/gtest.h>

TEST(SanityCheck, one) {
    EXPECT_EQ(1, 1);
}

TEST(SanityCheck, fail) {
    EXPECT_EQ(0, 1);
}
