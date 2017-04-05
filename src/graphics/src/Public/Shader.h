#pragma once
#include <glad/glad.h>

class Shader {
public:
    class CompilationError{};
    enum class Type {
        Vertex, Fragment
    };
    Shader(Type shaderType);
    ~Shader();
    Shader(const Shader&) = delete;
    Shader(Shader&&) = delete;
    Shader& operator=(const Shader&) = delete;
    Shader& operator=(Shader&&) = delete;

    void load(char* path);
    void compile();
    void link();

private:
    GLuint shader;
};
