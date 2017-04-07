#include "Shader.h"
#include <string>
#include <vector>
#include <iostream>
#include <fstream>

std::string headExceptionMessage(const char* path) noexcept {
    return std::string("Shader <" + std::string(path) + "> EXCEPTION");
}

ShaderException::ShaderException(const char* path) : name(path) {
}

const char* ShaderException::what() const noexcept {
    return headExceptionMessage(name).c_str();
}


class PathNotFoundException : public ShaderException {
public:
    using ShaderException::ShaderException;
    virtual const char* what() const noexcept override {
        std::string msg = headExceptionMessage(name) + ": path not found";
        return msg.c_str();
    }
};

class CompilationException : public ShaderException {
public:
    CompilationException(const char* path, const char* info)
            : ShaderException(path), info(info) {
    }
    virtual const char* what() const noexcept override {
        std::string msg = headExceptionMessage(name) + ": compilation failed with message <" + std::string(info) + " >";
        return msg.c_str();
    }
private:
    const char* info;
};

class LinkException : public ShaderException {
public:
    LinkException(const char* path, const char* info) : ShaderException(path), info(info) {
    }

    virtual const char* what() const noexcept override {
        std::string msg = headExceptionMessage(name) + ": link failed with message < " + std::string(info) + " >";
        return msg.c_str();
    }
private:
    const char* info;
};


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

Shader& Shader::load(const char *path) {
    this->path = path;
    const GLchar* textPtr = nullptr;
    const GLchar** src = &textPtr;
    std::string line;
    std::string text = "";
    std::ifstream file(path);
    if (file.is_open()) {
        while(getline(file, line)) {
            text += line + "\n";
        }
        file.close();
    } else {
        throw PathNotFoundException(path);
    }

    textPtr = text.data();
    glShaderSource(shader, 1, src, NULL);
    return *this;
}

Shader& Shader::compile() {
    glCompileShader(shader);
    GLint success = 0;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
    if (success == GL_FALSE) {
        GLint maxLength = 0;
        glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &maxLength);
        if (maxLength > 0) {
            std::vector<GLchar> errorLog(maxLength);
            glGetShaderInfoLog(shader, maxLength, &maxLength, &errorLog[0]);
            throw CompilationException(path, errorLog.data());
        } else {
            throw CompilationException(path, "empty");
        }
    }
    return *this;
}

ShaderProgram::ShaderProgram() {
    program = glCreateProgram();
}

ShaderProgram& ShaderProgram::attachShader(const Shader &s) {
    shaders.push_back(&s);
    return *this;
}

ShaderProgram& ShaderProgram::link() {
    for (auto it = shaders.begin(); it != shaders.end(); ++it) {
        const GLuint handler = (*it)->shader;
        glAttachShader(program, handler);
    }

    glLinkProgram(program);

    GLint isLinked = 0;
    glGetProgramiv(program, GL_LINK_STATUS, &isLinked);
    if(isLinked == GL_FALSE)
    {
        GLint maxLength = 0;
        glGetProgramiv(program, GL_INFO_LOG_LENGTH, &maxLength);
        if (maxLength > 0) {
            std::vector<GLchar> infoLog(maxLength);
            glGetProgramInfoLog(program, maxLength, &maxLength, &infoLog[0]);
            throw LinkException("program", infoLog.data());
        } else {
            throw LinkException("program", "empty");
        }
    }


    for (auto it = shaders.begin(); it != shaders.end(); ++it) {
        const GLuint handler = (*it)->shader;
        glDetachShader(program, handler);
    }

    return *this;
}

ShaderProgram& ShaderProgram::install() {
    glUseProgram(program);
    return *this;
}