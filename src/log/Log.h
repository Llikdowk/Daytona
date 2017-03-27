#pragma once

class Log {

public:
    template <typename... Args>
    static void message(const char* msg, Args... args) {
        logMessage(msg, args...);
    }

    template <typename... Args>
    static void warning(const char* msg, Args... args) {
        logWarning(CATEGORY, msg, args...);
    };

    template <typename... Args>
    static void error(const char* msg, Args... args) {
        logError(CATEGORY, msg, args...);
    }

private:
    static void (*logMessage)(const char* fmt, ...);
    static void (*logWarning)(int category, const char* fmt, ...);
    static void (*logError)(int category, const char* fmt, ...);
    static int CATEGORY;
};
