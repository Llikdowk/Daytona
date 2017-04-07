#pragma once
#include <glad/glad.h>
#include <exception>
#include <vector>

class ShaderException : public std::exception {
public:
    ShaderException(const char *path);
    virtual const char* what() const noexcept override;
protected:
    const char *name;
};

class Shader {
public:
    friend class ShaderProgram;
    enum class Type {
        Vertex, Fragment
    };

    Shader(Type shaderType);
    ~Shader();
    Shader(const Shader&) = delete;
    Shader(Shader&&) = delete;
    Shader& operator=(const Shader&) = delete;
    Shader& operator=(Shader&&) = delete;

    Shader& load(const char *path);
    Shader& compile();

private:
    GLuint shader;
    const char* path;
};

class ShaderProgram {
public:
    ShaderProgram();
    ShaderProgram& attachShader(const Shader &s);
    ShaderProgram& link();
    ShaderProgram& install();

private:
    GLuint program;
    std::vector<const Shader*> shaders;
};
