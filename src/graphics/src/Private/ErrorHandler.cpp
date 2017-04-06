#include "ErrorHandler.h"
#include <Log.h>

void Error::pathNotFound(const char* path) {
    Log::error("File with path %s could not be found", path);
}
