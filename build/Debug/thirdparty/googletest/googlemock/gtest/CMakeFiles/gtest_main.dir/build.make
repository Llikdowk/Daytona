# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2016.3.4\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2016.3.4\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\WORKSPACE\C++\Daytona

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\WORKSPACE\C++\Daytona\build\Debug

# Include any dependencies generated for this target.
include thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make
thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/includes_CXX.rsp
thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj: ../../thirdparty/googletest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\WORKSPACE\C++\Daytona\build\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj"
	cd /d D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest && D:\MinGW64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\gtest_main.dir\src\gtest_main.cc.obj -c D:\WORKSPACE\C++\Daytona\thirdparty\googletest\googletest\src\gtest_main.cc

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /d D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest && D:\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\WORKSPACE\C++\Daytona\thirdparty\googletest\googletest\src\gtest_main.cc > CMakeFiles\gtest_main.dir\src\gtest_main.cc.i

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /d D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest && D:\MinGW64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\WORKSPACE\C++\Daytona\thirdparty\googletest\googletest\src\gtest_main.cc -o CMakeFiles\gtest_main.dir\src\gtest_main.cc.s

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.requires:

.PHONY : thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.requires

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.provides: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.requires
	$(MAKE) -f thirdparty\googletest\googlemock\gtest\CMakeFiles\gtest_main.dir\build.make thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.provides.build
.PHONY : thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.provides

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.provides.build: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj


# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

thirdparty/googletest/googlemock/gtest/libgtest_main.a: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj
thirdparty/googletest/googlemock/gtest/libgtest_main.a: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build.make
thirdparty/googletest/googlemock/gtest/libgtest_main.a: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\WORKSPACE\C++\Daytona\build\Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest_main.a"
	cd /d D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest && $(CMAKE_COMMAND) -P CMakeFiles\gtest_main.dir\cmake_clean_target.cmake
	cd /d D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gtest_main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build: thirdparty/googletest/googlemock/gtest/libgtest_main.a

.PHONY : thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/requires: thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.obj.requires

.PHONY : thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/requires

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /d D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest && $(CMAKE_COMMAND) -P CMakeFiles\gtest_main.dir\cmake_clean.cmake
.PHONY : thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean

thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\WORKSPACE\C++\Daytona D:\WORKSPACE\C++\Daytona\thirdparty\googletest\googletest D:\WORKSPACE\C++\Daytona\build\Debug D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest D:\WORKSPACE\C++\Daytona\build\Debug\thirdparty\googletest\googlemock\gtest\CMakeFiles\gtest_main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : thirdparty/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend

