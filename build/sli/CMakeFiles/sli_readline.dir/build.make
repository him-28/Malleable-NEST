# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bsc15/bsc15982/nest-simulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bsc15/bsc15982/nest-simulator/change

# Include any dependencies generated for this target.
include sli/CMakeFiles/sli_readline.dir/depend.make

# Include the progress variables for this target.
include sli/CMakeFiles/sli_readline.dir/progress.make

# Include the compile flags for this target's objects.
include sli/CMakeFiles/sli_readline.dir/flags.make

sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o: sli/CMakeFiles/sli_readline.dir/flags.make
sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o: ../sli/gnureadline.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bsc15/bsc15982/nest-simulator/change/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o"
	cd /home/bsc15/bsc15982/nest-simulator/change/sli && /apps/GCC/7.1.0/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sli_readline.dir/gnureadline.cc.o -c /home/bsc15/bsc15982/nest-simulator/sli/gnureadline.cc

sli/CMakeFiles/sli_readline.dir/gnureadline.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sli_readline.dir/gnureadline.cc.i"
	cd /home/bsc15/bsc15982/nest-simulator/change/sli && /apps/GCC/7.1.0/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bsc15/bsc15982/nest-simulator/sli/gnureadline.cc > CMakeFiles/sli_readline.dir/gnureadline.cc.i

sli/CMakeFiles/sli_readline.dir/gnureadline.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sli_readline.dir/gnureadline.cc.s"
	cd /home/bsc15/bsc15982/nest-simulator/change/sli && /apps/GCC/7.1.0/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bsc15/bsc15982/nest-simulator/sli/gnureadline.cc -o CMakeFiles/sli_readline.dir/gnureadline.cc.s

sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.requires:

.PHONY : sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.requires

sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.provides: sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.requires
	$(MAKE) -f sli/CMakeFiles/sli_readline.dir/build.make sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.provides.build
.PHONY : sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.provides

sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.provides.build: sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o


# Object files for target sli_readline
sli_readline_OBJECTS = \
"CMakeFiles/sli_readline.dir/gnureadline.cc.o"

# External object files for target sli_readline
sli_readline_EXTERNAL_OBJECTS =

sli/libsli_readline.so: sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o
sli/libsli_readline.so: sli/CMakeFiles/sli_readline.dir/build.make
sli/libsli_readline.so: sli/libsli.so
sli/libsli_readline.so: libnestutil/libnestutil.so
sli/libsli_readline.so: /usr/lib64/libreadline.so
sli/libsli_readline.so: /usr/lib64/libncurses.so
sli/libsli_readline.so: sli/CMakeFiles/sli_readline.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bsc15/bsc15982/nest-simulator/change/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libsli_readline.so"
	cd /home/bsc15/bsc15982/nest-simulator/change/sli && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sli_readline.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sli/CMakeFiles/sli_readline.dir/build: sli/libsli_readline.so

.PHONY : sli/CMakeFiles/sli_readline.dir/build

sli/CMakeFiles/sli_readline.dir/requires: sli/CMakeFiles/sli_readline.dir/gnureadline.cc.o.requires

.PHONY : sli/CMakeFiles/sli_readline.dir/requires

sli/CMakeFiles/sli_readline.dir/clean:
	cd /home/bsc15/bsc15982/nest-simulator/change/sli && $(CMAKE_COMMAND) -P CMakeFiles/sli_readline.dir/cmake_clean.cmake
.PHONY : sli/CMakeFiles/sli_readline.dir/clean

sli/CMakeFiles/sli_readline.dir/depend:
	cd /home/bsc15/bsc15982/nest-simulator/change && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bsc15/bsc15982/nest-simulator /home/bsc15/bsc15982/nest-simulator/sli /home/bsc15/bsc15982/nest-simulator/change /home/bsc15/bsc15982/nest-simulator/change/sli /home/bsc15/bsc15982/nest-simulator/change/sli/CMakeFiles/sli_readline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sli/CMakeFiles/sli_readline.dir/depend

