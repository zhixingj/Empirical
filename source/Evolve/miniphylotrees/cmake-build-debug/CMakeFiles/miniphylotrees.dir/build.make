# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\abbys\Empirical\source\Evolve\miniphylotrees

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/miniphylotrees.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/miniphylotrees.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/miniphylotrees.dir/flags.make

CMakeFiles/miniphylotrees.dir/main.cpp.obj: CMakeFiles/miniphylotrees.dir/flags.make
CMakeFiles/miniphylotrees.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/miniphylotrees.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\miniphylotrees.dir\main.cpp.obj -c C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\main.cpp

CMakeFiles/miniphylotrees.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/miniphylotrees.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\main.cpp > CMakeFiles\miniphylotrees.dir\main.cpp.i

CMakeFiles/miniphylotrees.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/miniphylotrees.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\main.cpp -o CMakeFiles\miniphylotrees.dir\main.cpp.s

# Object files for target miniphylotrees
miniphylotrees_OBJECTS = \
"CMakeFiles/miniphylotrees.dir/main.cpp.obj"

# External object files for target miniphylotrees
miniphylotrees_EXTERNAL_OBJECTS =

miniphylotrees.exe: CMakeFiles/miniphylotrees.dir/main.cpp.obj
miniphylotrees.exe: CMakeFiles/miniphylotrees.dir/build.make
miniphylotrees.exe: CMakeFiles/miniphylotrees.dir/linklibs.rsp
miniphylotrees.exe: CMakeFiles/miniphylotrees.dir/objects1.rsp
miniphylotrees.exe: CMakeFiles/miniphylotrees.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable miniphylotrees.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\miniphylotrees.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/miniphylotrees.dir/build: miniphylotrees.exe

.PHONY : CMakeFiles/miniphylotrees.dir/build

CMakeFiles/miniphylotrees.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\miniphylotrees.dir\cmake_clean.cmake
.PHONY : CMakeFiles/miniphylotrees.dir/clean

CMakeFiles/miniphylotrees.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\abbys\Empirical\source\Evolve\miniphylotrees C:\Users\abbys\Empirical\source\Evolve\miniphylotrees C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\cmake-build-debug C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\cmake-build-debug C:\Users\abbys\Empirical\source\Evolve\miniphylotrees\cmake-build-debug\CMakeFiles\miniphylotrees.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/miniphylotrees.dir/depend

