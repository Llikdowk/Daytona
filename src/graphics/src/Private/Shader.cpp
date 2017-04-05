#include "Shader.h"
#include <vector>

Shader::Type::Vertex = GL_VERTEX_SHADER;
Shader::Type::Fragment = GL_FRAGMENT_SHADER;

Shader::Shader(Type shaderType) {
    GLuint type;
    switch (shaderType) {
        case Type::Vertex: type = GL_VERTEX_SHADER; break;
        case Type::Fragment: type = GL_FRAGMENT_SHADER; break;
    }
    shader = glCreateShader(type);
}

Shader::~Shader() {
    glDeleteShader(shader); // will be deferred until detached from program
}

void Shader::load(char* path) {
    const GLchar** src;
    // todo read from file to src;
    glShaderSource(shader, 1, src, NULL);
}

void Shader::compile() {
    glCompileShader(shader);
    GLint success = 0;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
    if (success == GL_FALSE) {
        GLint maxLength = 0;
        glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &maxLength);

        // The maxLength includes the NULL character
        std::vector<GLchar> errorLog(maxLength); // fixme ???
        glGetShaderInfoLog(shader, maxLength, &maxLength, &errorLog[0]);

        // Provide the infolog in whatever manor you deem best.
        // Exit with failure.

        //todo https://www.khronos.org/opengl/wiki/Shader_Compilation
        throw CompilationError(); // TODO research
    }
}