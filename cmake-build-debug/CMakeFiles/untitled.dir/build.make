# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jialuhu/CLionProjects/webserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jialuhu/CLionProjects/webserver/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/untitled.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/untitled.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/untitled.dir/flags.make

CMakeFiles/untitled.dir/main.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/untitled.dir/main.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/main.cpp.o -c /Users/jialuhu/CLionProjects/webserver/main.cpp

CMakeFiles/untitled.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/main.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/main.cpp > CMakeFiles/untitled.dir/main.cpp.i

CMakeFiles/untitled.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/main.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/main.cpp -o CMakeFiles/untitled.dir/main.cpp.s

CMakeFiles/untitled.dir/EventLoop.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/EventLoop.cpp.o: ../EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/untitled.dir/EventLoop.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/EventLoop.cpp.o -c /Users/jialuhu/CLionProjects/webserver/EventLoop.cpp

CMakeFiles/untitled.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/EventLoop.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/EventLoop.cpp > CMakeFiles/untitled.dir/EventLoop.cpp.i

CMakeFiles/untitled.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/EventLoop.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/EventLoop.cpp -o CMakeFiles/untitled.dir/EventLoop.cpp.s

CMakeFiles/untitled.dir/Channel.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/Channel.cpp.o: ../Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/untitled.dir/Channel.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/Channel.cpp.o -c /Users/jialuhu/CLionProjects/webserver/Channel.cpp

CMakeFiles/untitled.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/Channel.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/Channel.cpp > CMakeFiles/untitled.dir/Channel.cpp.i

CMakeFiles/untitled.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/Channel.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/Channel.cpp -o CMakeFiles/untitled.dir/Channel.cpp.s

CMakeFiles/untitled.dir/Kqueue.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/Kqueue.cpp.o: ../Kqueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/untitled.dir/Kqueue.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/Kqueue.cpp.o -c /Users/jialuhu/CLionProjects/webserver/Kqueue.cpp

CMakeFiles/untitled.dir/Kqueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/Kqueue.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/Kqueue.cpp > CMakeFiles/untitled.dir/Kqueue.cpp.i

CMakeFiles/untitled.dir/Kqueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/Kqueue.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/Kqueue.cpp -o CMakeFiles/untitled.dir/Kqueue.cpp.s

CMakeFiles/untitled.dir/SocketOpt.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/SocketOpt.cpp.o: ../SocketOpt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/untitled.dir/SocketOpt.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/SocketOpt.cpp.o -c /Users/jialuhu/CLionProjects/webserver/SocketOpt.cpp

CMakeFiles/untitled.dir/SocketOpt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/SocketOpt.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/SocketOpt.cpp > CMakeFiles/untitled.dir/SocketOpt.cpp.i

CMakeFiles/untitled.dir/SocketOpt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/SocketOpt.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/SocketOpt.cpp -o CMakeFiles/untitled.dir/SocketOpt.cpp.s

CMakeFiles/untitled.dir/InetAddr.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/InetAddr.cpp.o: ../InetAddr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/untitled.dir/InetAddr.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/InetAddr.cpp.o -c /Users/jialuhu/CLionProjects/webserver/InetAddr.cpp

CMakeFiles/untitled.dir/InetAddr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/InetAddr.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/InetAddr.cpp > CMakeFiles/untitled.dir/InetAddr.cpp.i

CMakeFiles/untitled.dir/InetAddr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/InetAddr.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/InetAddr.cpp -o CMakeFiles/untitled.dir/InetAddr.cpp.s

CMakeFiles/untitled.dir/Acceptor.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/Acceptor.cpp.o: ../Acceptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/untitled.dir/Acceptor.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/Acceptor.cpp.o -c /Users/jialuhu/CLionProjects/webserver/Acceptor.cpp

CMakeFiles/untitled.dir/Acceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/Acceptor.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/Acceptor.cpp > CMakeFiles/untitled.dir/Acceptor.cpp.i

CMakeFiles/untitled.dir/Acceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/Acceptor.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/Acceptor.cpp -o CMakeFiles/untitled.dir/Acceptor.cpp.s

CMakeFiles/untitled.dir/TcpServer.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/TcpServer.cpp.o: ../TcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/untitled.dir/TcpServer.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/TcpServer.cpp.o -c /Users/jialuhu/CLionProjects/webserver/TcpServer.cpp

CMakeFiles/untitled.dir/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/TcpServer.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/TcpServer.cpp > CMakeFiles/untitled.dir/TcpServer.cpp.i

CMakeFiles/untitled.dir/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/TcpServer.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/TcpServer.cpp -o CMakeFiles/untitled.dir/TcpServer.cpp.s

CMakeFiles/untitled.dir/WebServer.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/WebServer.cpp.o: ../WebServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/untitled.dir/WebServer.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/WebServer.cpp.o -c /Users/jialuhu/CLionProjects/webserver/WebServer.cpp

CMakeFiles/untitled.dir/WebServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/WebServer.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/WebServer.cpp > CMakeFiles/untitled.dir/WebServer.cpp.i

CMakeFiles/untitled.dir/WebServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/WebServer.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/WebServer.cpp -o CMakeFiles/untitled.dir/WebServer.cpp.s

CMakeFiles/untitled.dir/TcpConnection.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/TcpConnection.cpp.o: ../TcpConnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/untitled.dir/TcpConnection.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/TcpConnection.cpp.o -c /Users/jialuhu/CLionProjects/webserver/TcpConnection.cpp

CMakeFiles/untitled.dir/TcpConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/TcpConnection.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/TcpConnection.cpp > CMakeFiles/untitled.dir/TcpConnection.cpp.i

CMakeFiles/untitled.dir/TcpConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/TcpConnection.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/TcpConnection.cpp -o CMakeFiles/untitled.dir/TcpConnection.cpp.s

CMakeFiles/untitled.dir/Buffer.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/Buffer.cpp.o: ../Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/untitled.dir/Buffer.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/Buffer.cpp.o -c /Users/jialuhu/CLionProjects/webserver/Buffer.cpp

CMakeFiles/untitled.dir/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/Buffer.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/Buffer.cpp > CMakeFiles/untitled.dir/Buffer.cpp.i

CMakeFiles/untitled.dir/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/Buffer.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/Buffer.cpp -o CMakeFiles/untitled.dir/Buffer.cpp.s

CMakeFiles/untitled.dir/EventLoopthread.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/EventLoopthread.cpp.o: ../EventLoopthread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/untitled.dir/EventLoopthread.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/EventLoopthread.cpp.o -c /Users/jialuhu/CLionProjects/webserver/EventLoopthread.cpp

CMakeFiles/untitled.dir/EventLoopthread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/EventLoopthread.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/EventLoopthread.cpp > CMakeFiles/untitled.dir/EventLoopthread.cpp.i

CMakeFiles/untitled.dir/EventLoopthread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/EventLoopthread.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/EventLoopthread.cpp -o CMakeFiles/untitled.dir/EventLoopthread.cpp.s

CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.o: CMakeFiles/untitled.dir/flags.make
CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.o: ../EventLoopthreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.o -c /Users/jialuhu/CLionProjects/webserver/EventLoopthreadPool.cpp

CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/EventLoopthreadPool.cpp > CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.i

CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/EventLoopthreadPool.cpp -o CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.s

# Object files for target untitled
untitled_OBJECTS = \
"CMakeFiles/untitled.dir/main.cpp.o" \
"CMakeFiles/untitled.dir/EventLoop.cpp.o" \
"CMakeFiles/untitled.dir/Channel.cpp.o" \
"CMakeFiles/untitled.dir/Kqueue.cpp.o" \
"CMakeFiles/untitled.dir/SocketOpt.cpp.o" \
"CMakeFiles/untitled.dir/InetAddr.cpp.o" \
"CMakeFiles/untitled.dir/Acceptor.cpp.o" \
"CMakeFiles/untitled.dir/TcpServer.cpp.o" \
"CMakeFiles/untitled.dir/WebServer.cpp.o" \
"CMakeFiles/untitled.dir/TcpConnection.cpp.o" \
"CMakeFiles/untitled.dir/Buffer.cpp.o" \
"CMakeFiles/untitled.dir/EventLoopthread.cpp.o" \
"CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.o"

# External object files for target untitled
untitled_EXTERNAL_OBJECTS =

untitled: CMakeFiles/untitled.dir/main.cpp.o
untitled: CMakeFiles/untitled.dir/EventLoop.cpp.o
untitled: CMakeFiles/untitled.dir/Channel.cpp.o
untitled: CMakeFiles/untitled.dir/Kqueue.cpp.o
untitled: CMakeFiles/untitled.dir/SocketOpt.cpp.o
untitled: CMakeFiles/untitled.dir/InetAddr.cpp.o
untitled: CMakeFiles/untitled.dir/Acceptor.cpp.o
untitled: CMakeFiles/untitled.dir/TcpServer.cpp.o
untitled: CMakeFiles/untitled.dir/WebServer.cpp.o
untitled: CMakeFiles/untitled.dir/TcpConnection.cpp.o
untitled: CMakeFiles/untitled.dir/Buffer.cpp.o
untitled: CMakeFiles/untitled.dir/EventLoopthread.cpp.o
untitled: CMakeFiles/untitled.dir/EventLoopthreadPool.cpp.o
untitled: CMakeFiles/untitled.dir/build.make
untitled: CMakeFiles/untitled.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable untitled"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/untitled.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/untitled.dir/build: untitled

.PHONY : CMakeFiles/untitled.dir/build

CMakeFiles/untitled.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/untitled.dir/cmake_clean.cmake
.PHONY : CMakeFiles/untitled.dir/clean

CMakeFiles/untitled.dir/depend:
	cd /Users/jialuhu/CLionProjects/webserver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jialuhu/CLionProjects/webserver /Users/jialuhu/CLionProjects/webserver /Users/jialuhu/CLionProjects/webserver/cmake-build-debug /Users/jialuhu/CLionProjects/webserver/cmake-build-debug /Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles/untitled.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/untitled.dir/depend

