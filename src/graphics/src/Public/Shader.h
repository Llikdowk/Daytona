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

    void load(const char *path);
    void compile();

private:
    GLuint shader;
    const char* path;
};

class ShaderProgram {
public:
    ShaderProgram();
    void addShader(const Shader& s);
    void link();
    GLuint getHandler();

private:
    GLuint program;
    std::vector<const Shader*> shaders;
};
