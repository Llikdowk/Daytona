#include "Log.h"
#include <SDL_log.h>

void (*Log::logMessage)(const char *, ...) = &SDL_Log;
void (*Log::logWarning)(int, const char *, ...) = &SDL_LogWarn;
void (*Log::logError)(int, const char *, ...) = &SDL_LogError;
int Log::CATEGORY = SDL_LOG_CATEGORY_APPLICATION;

