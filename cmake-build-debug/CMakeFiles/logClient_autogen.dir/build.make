# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Dmitrii\Documents\Github\ssl-forked

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Dmitrii\Documents\Github\ssl-forked\cmake-build-debug

# Utility rule file for logClient_autogen.

# Include the progress variables for this target.
include CMakeFiles/logClient_autogen.dir/progress.make

CMakeFiles/logClient_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Dmitrii\Documents\Github\ssl-forked\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target logClient"
	"C:\Program Files\JetBrains\CLion 2018.3.4\bin\cmake\win\bin\cmake.exe" -E cmake_autogen C:/Users/Dmitrii/Documents/Github/ssl-forked/cmake-build-debug/CMakeFiles/logClient_autogen.dir/AutogenInfo.cmake Debug

logClient_autogen: CMakeFiles/logClient_autogen
logClient_autogen: CMakeFiles/logClient_autogen.dir/build.make

.PHONY : logClient_autogen

# Rule to build all files generated by this target.
CMakeFiles/logClient_autogen.dir/build: logClient_autogen

.PHONY : CMakeFiles/logClient_autogen.dir/build

CMakeFiles/logClient_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\logClient_autogen.dir\cmake_clean.cmake
.PHONY : CMakeFiles/logClient_autogen.dir/clean

CMakeFiles/logClient_autogen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Dmitrii\Documents\Github\ssl-forked C:\Users\Dmitrii\Documents\Github\ssl-forked C:\Users\Dmitrii\Documents\Github\ssl-forked\cmake-build-debug C:\Users\Dmitrii\Documents\Github\ssl-forked\cmake-build-debug C:\Users\Dmitrii\Documents\Github\ssl-forked\cmake-build-debug\CMakeFiles\logClient_autogen.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/logClient_autogen.dir/depend

