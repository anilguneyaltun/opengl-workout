# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/Dev/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/Dev/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/guney/Developer/CLion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/guney/Developer/CLion/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/CLion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CLion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CLion.dir/flags.make

CMakeFiles/CLion.dir/src/Camera.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Camera.cpp.o: ../src/Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CLion.dir/src/Camera.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Camera.cpp.o -c /Users/guney/Developer/CLion/src/Camera.cpp

CMakeFiles/CLion.dir/src/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Camera.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Camera.cpp > CMakeFiles/CLion.dir/src/Camera.cpp.i

CMakeFiles/CLion.dir/src/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Camera.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Camera.cpp -o CMakeFiles/CLion.dir/src/Camera.cpp.s

CMakeFiles/CLion.dir/src/DirectionalLight.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/DirectionalLight.cpp.o: ../src/DirectionalLight.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CLion.dir/src/DirectionalLight.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/DirectionalLight.cpp.o -c /Users/guney/Developer/CLion/src/DirectionalLight.cpp

CMakeFiles/CLion.dir/src/DirectionalLight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/DirectionalLight.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/DirectionalLight.cpp > CMakeFiles/CLion.dir/src/DirectionalLight.cpp.i

CMakeFiles/CLion.dir/src/DirectionalLight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/DirectionalLight.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/DirectionalLight.cpp -o CMakeFiles/CLion.dir/src/DirectionalLight.cpp.s

CMakeFiles/CLion.dir/src/GLWindow.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/GLWindow.cpp.o: ../src/GLWindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CLion.dir/src/GLWindow.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/GLWindow.cpp.o -c /Users/guney/Developer/CLion/src/GLWindow.cpp

CMakeFiles/CLion.dir/src/GLWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/GLWindow.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/GLWindow.cpp > CMakeFiles/CLion.dir/src/GLWindow.cpp.i

CMakeFiles/CLion.dir/src/GLWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/GLWindow.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/GLWindow.cpp -o CMakeFiles/CLion.dir/src/GLWindow.cpp.s

CMakeFiles/CLion.dir/src/Light.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Light.cpp.o: ../src/Light.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CLion.dir/src/Light.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Light.cpp.o -c /Users/guney/Developer/CLion/src/Light.cpp

CMakeFiles/CLion.dir/src/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Light.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Light.cpp > CMakeFiles/CLion.dir/src/Light.cpp.i

CMakeFiles/CLion.dir/src/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Light.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Light.cpp -o CMakeFiles/CLion.dir/src/Light.cpp.s

CMakeFiles/CLion.dir/src/Material.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Material.cpp.o: ../src/Material.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CLion.dir/src/Material.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Material.cpp.o -c /Users/guney/Developer/CLion/src/Material.cpp

CMakeFiles/CLion.dir/src/Material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Material.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Material.cpp > CMakeFiles/CLion.dir/src/Material.cpp.i

CMakeFiles/CLion.dir/src/Material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Material.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Material.cpp -o CMakeFiles/CLion.dir/src/Material.cpp.s

CMakeFiles/CLion.dir/src/Mesh.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Mesh.cpp.o: ../src/Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CLion.dir/src/Mesh.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Mesh.cpp.o -c /Users/guney/Developer/CLion/src/Mesh.cpp

CMakeFiles/CLion.dir/src/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Mesh.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Mesh.cpp > CMakeFiles/CLion.dir/src/Mesh.cpp.i

CMakeFiles/CLion.dir/src/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Mesh.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Mesh.cpp -o CMakeFiles/CLion.dir/src/Mesh.cpp.s

CMakeFiles/CLion.dir/src/Model.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Model.cpp.o: ../src/Model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/CLion.dir/src/Model.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Model.cpp.o -c /Users/guney/Developer/CLion/src/Model.cpp

CMakeFiles/CLion.dir/src/Model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Model.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Model.cpp > CMakeFiles/CLion.dir/src/Model.cpp.i

CMakeFiles/CLion.dir/src/Model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Model.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Model.cpp -o CMakeFiles/CLion.dir/src/Model.cpp.s

CMakeFiles/CLion.dir/src/PointLight.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/PointLight.cpp.o: ../src/PointLight.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/CLion.dir/src/PointLight.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/PointLight.cpp.o -c /Users/guney/Developer/CLion/src/PointLight.cpp

CMakeFiles/CLion.dir/src/PointLight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/PointLight.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/PointLight.cpp > CMakeFiles/CLion.dir/src/PointLight.cpp.i

CMakeFiles/CLion.dir/src/PointLight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/PointLight.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/PointLight.cpp -o CMakeFiles/CLion.dir/src/PointLight.cpp.s

CMakeFiles/CLion.dir/src/Shader.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Shader.cpp.o: ../src/Shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/CLion.dir/src/Shader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Shader.cpp.o -c /Users/guney/Developer/CLion/src/Shader.cpp

CMakeFiles/CLion.dir/src/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Shader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Shader.cpp > CMakeFiles/CLion.dir/src/Shader.cpp.i

CMakeFiles/CLion.dir/src/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Shader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Shader.cpp -o CMakeFiles/CLion.dir/src/Shader.cpp.s

CMakeFiles/CLion.dir/src/SpotLight.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/SpotLight.cpp.o: ../src/SpotLight.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/CLion.dir/src/SpotLight.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/SpotLight.cpp.o -c /Users/guney/Developer/CLion/src/SpotLight.cpp

CMakeFiles/CLion.dir/src/SpotLight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/SpotLight.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/SpotLight.cpp > CMakeFiles/CLion.dir/src/SpotLight.cpp.i

CMakeFiles/CLion.dir/src/SpotLight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/SpotLight.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/SpotLight.cpp -o CMakeFiles/CLion.dir/src/SpotLight.cpp.s

CMakeFiles/CLion.dir/src/Texture.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/Texture.cpp.o: ../src/Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/CLion.dir/src/Texture.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/Texture.cpp.o -c /Users/guney/Developer/CLion/src/Texture.cpp

CMakeFiles/CLion.dir/src/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/Texture.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/Texture.cpp > CMakeFiles/CLion.dir/src/Texture.cpp.i

CMakeFiles/CLion.dir/src/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/Texture.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/Texture.cpp -o CMakeFiles/CLion.dir/src/Texture.cpp.s

CMakeFiles/CLion.dir/src/main.cpp.o: CMakeFiles/CLion.dir/flags.make
CMakeFiles/CLion.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/CLion.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CLion.dir/src/main.cpp.o -c /Users/guney/Developer/CLion/src/main.cpp

CMakeFiles/CLion.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CLion.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/guney/Developer/CLion/src/main.cpp > CMakeFiles/CLion.dir/src/main.cpp.i

CMakeFiles/CLion.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CLion.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/guney/Developer/CLion/src/main.cpp -o CMakeFiles/CLion.dir/src/main.cpp.s

# Object files for target CLion
CLion_OBJECTS = \
"CMakeFiles/CLion.dir/src/Camera.cpp.o" \
"CMakeFiles/CLion.dir/src/DirectionalLight.cpp.o" \
"CMakeFiles/CLion.dir/src/GLWindow.cpp.o" \
"CMakeFiles/CLion.dir/src/Light.cpp.o" \
"CMakeFiles/CLion.dir/src/Material.cpp.o" \
"CMakeFiles/CLion.dir/src/Mesh.cpp.o" \
"CMakeFiles/CLion.dir/src/Model.cpp.o" \
"CMakeFiles/CLion.dir/src/PointLight.cpp.o" \
"CMakeFiles/CLion.dir/src/Shader.cpp.o" \
"CMakeFiles/CLion.dir/src/SpotLight.cpp.o" \
"CMakeFiles/CLion.dir/src/Texture.cpp.o" \
"CMakeFiles/CLion.dir/src/main.cpp.o"

# External object files for target CLion
CLion_EXTERNAL_OBJECTS =

CLion: CMakeFiles/CLion.dir/src/Camera.cpp.o
CLion: CMakeFiles/CLion.dir/src/DirectionalLight.cpp.o
CLion: CMakeFiles/CLion.dir/src/GLWindow.cpp.o
CLion: CMakeFiles/CLion.dir/src/Light.cpp.o
CLion: CMakeFiles/CLion.dir/src/Material.cpp.o
CLion: CMakeFiles/CLion.dir/src/Mesh.cpp.o
CLion: CMakeFiles/CLion.dir/src/Model.cpp.o
CLion: CMakeFiles/CLion.dir/src/PointLight.cpp.o
CLion: CMakeFiles/CLion.dir/src/Shader.cpp.o
CLion: CMakeFiles/CLion.dir/src/SpotLight.cpp.o
CLion: CMakeFiles/CLion.dir/src/Texture.cpp.o
CLion: CMakeFiles/CLion.dir/src/main.cpp.o
CLion: CMakeFiles/CLion.dir/build.make
CLion: /usr/local/Cellar/glew/2.2.0_1/lib/libGLEW.2.2.dylib
CLion: /usr/local/Cellar/glfw/3.3.4/lib/libglfw.3.3.dylib
CLion: /usr/local/lib/assimp/libassimp.5.0.0.dylib
CLion: /usr/local/lib/assimp/libIrrXML.dylib
CLion: CMakeFiles/CLion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/guney/Developer/CLion/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable CLion"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CLion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CLion.dir/build: CLion

.PHONY : CMakeFiles/CLion.dir/build

CMakeFiles/CLion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CLion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CLion.dir/clean

CMakeFiles/CLion.dir/depend:
	cd /Users/guney/Developer/CLion/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/guney/Developer/CLion /Users/guney/Developer/CLion /Users/guney/Developer/CLion/cmake-build-release /Users/guney/Developer/CLion/cmake-build-release /Users/guney/Developer/CLion/cmake-build-release/CMakeFiles/CLion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CLion.dir/depend

