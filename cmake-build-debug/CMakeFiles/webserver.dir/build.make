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
include CMakeFiles/webserver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webserver.dir/flags.make

CMakeFiles/webserver.dir/src/main.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/webserver.dir/src/main.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/main.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/main.cpp

CMakeFiles/webserver.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/main.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/main.cpp > CMakeFiles/webserver.dir/src/main.cpp.i

CMakeFiles/webserver.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/main.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/main.cpp -o CMakeFiles/webserver.dir/src/main.cpp.s

CMakeFiles/webserver.dir/src/base/Acceptor.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/Acceptor.cpp.o: ../src/base/Acceptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/webserver.dir/src/base/Acceptor.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/Acceptor.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/Acceptor.cpp

CMakeFiles/webserver.dir/src/base/Acceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/Acceptor.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/Acceptor.cpp > CMakeFiles/webserver.dir/src/base/Acceptor.cpp.i

CMakeFiles/webserver.dir/src/base/Acceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/Acceptor.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/Acceptor.cpp -o CMakeFiles/webserver.dir/src/base/Acceptor.cpp.s

CMakeFiles/webserver.dir/src/base/Buffer.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/Buffer.cpp.o: ../src/base/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/webserver.dir/src/base/Buffer.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/Buffer.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/Buffer.cpp

CMakeFiles/webserver.dir/src/base/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/Buffer.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/Buffer.cpp > CMakeFiles/webserver.dir/src/base/Buffer.cpp.i

CMakeFiles/webserver.dir/src/base/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/Buffer.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/Buffer.cpp -o CMakeFiles/webserver.dir/src/base/Buffer.cpp.s

CMakeFiles/webserver.dir/src/base/Channel.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/Channel.cpp.o: ../src/base/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/webserver.dir/src/base/Channel.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/Channel.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/Channel.cpp

CMakeFiles/webserver.dir/src/base/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/Channel.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/Channel.cpp > CMakeFiles/webserver.dir/src/base/Channel.cpp.i

CMakeFiles/webserver.dir/src/base/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/Channel.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/Channel.cpp -o CMakeFiles/webserver.dir/src/base/Channel.cpp.s

CMakeFiles/webserver.dir/src/base/EventLoop.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/EventLoop.cpp.o: ../src/base/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/webserver.dir/src/base/EventLoop.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/EventLoop.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/EventLoop.cpp

CMakeFiles/webserver.dir/src/base/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/EventLoop.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/EventLoop.cpp > CMakeFiles/webserver.dir/src/base/EventLoop.cpp.i

CMakeFiles/webserver.dir/src/base/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/EventLoop.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/EventLoop.cpp -o CMakeFiles/webserver.dir/src/base/EventLoop.cpp.s

CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.o: ../src/base/EventLoopthread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/EventLoopthread.cpp

CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/EventLoopthread.cpp > CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.i

CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/EventLoopthread.cpp -o CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.s

CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.o: ../src/base/EventLoopthreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/EventLoopthreadPool.cpp

CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/EventLoopthreadPool.cpp > CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.i

CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/EventLoopthreadPool.cpp -o CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.s

CMakeFiles/webserver.dir/src/base/InetAddr.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/InetAddr.cpp.o: ../src/base/InetAddr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/webserver.dir/src/base/InetAddr.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/InetAddr.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/InetAddr.cpp

CMakeFiles/webserver.dir/src/base/InetAddr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/InetAddr.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/InetAddr.cpp > CMakeFiles/webserver.dir/src/base/InetAddr.cpp.i

CMakeFiles/webserver.dir/src/base/InetAddr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/InetAddr.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/InetAddr.cpp -o CMakeFiles/webserver.dir/src/base/InetAddr.cpp.s

CMakeFiles/webserver.dir/src/base/Kqueue.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/Kqueue.cpp.o: ../src/base/Kqueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/webserver.dir/src/base/Kqueue.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/Kqueue.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/Kqueue.cpp

CMakeFiles/webserver.dir/src/base/Kqueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/Kqueue.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/Kqueue.cpp > CMakeFiles/webserver.dir/src/base/Kqueue.cpp.i

CMakeFiles/webserver.dir/src/base/Kqueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/Kqueue.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/Kqueue.cpp -o CMakeFiles/webserver.dir/src/base/Kqueue.cpp.s

CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.o: ../src/base/SocketOpt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/base/SocketOpt.cpp

CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/base/SocketOpt.cpp > CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.i

CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/base/SocketOpt.cpp -o CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.s

CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.o: ../src/net/TcpConnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/net/TcpConnection.cpp

CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/net/TcpConnection.cpp > CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.i

CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/net/TcpConnection.cpp -o CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.s

CMakeFiles/webserver.dir/src/net/TcpServer.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/net/TcpServer.cpp.o: ../src/net/TcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/webserver.dir/src/net/TcpServer.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/net/TcpServer.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/net/TcpServer.cpp

CMakeFiles/webserver.dir/src/net/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/net/TcpServer.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/net/TcpServer.cpp > CMakeFiles/webserver.dir/src/net/TcpServer.cpp.i

CMakeFiles/webserver.dir/src/net/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/net/TcpServer.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/net/TcpServer.cpp -o CMakeFiles/webserver.dir/src/net/TcpServer.cpp.s

CMakeFiles/webserver.dir/src/http/WebServer.cpp.o: CMakeFiles/webserver.dir/flags.make
CMakeFiles/webserver.dir/src/http/WebServer.cpp.o: ../src/http/WebServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/webserver.dir/src/http/WebServer.cpp.o"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/webserver.dir/src/http/WebServer.cpp.o -c /Users/jialuhu/CLionProjects/webserver/src/http/WebServer.cpp

CMakeFiles/webserver.dir/src/http/WebServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/webserver.dir/src/http/WebServer.cpp.i"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jialuhu/CLionProjects/webserver/src/http/WebServer.cpp > CMakeFiles/webserver.dir/src/http/WebServer.cpp.i

CMakeFiles/webserver.dir/src/http/WebServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/webserver.dir/src/http/WebServer.cpp.s"
	/usr/local/Cellar/gcc/8.3.0/bin/g++-8 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jialuhu/CLionProjects/webserver/src/http/WebServer.cpp -o CMakeFiles/webserver.dir/src/http/WebServer.cpp.s

# Object files for target webserver
webserver_OBJECTS = \
"CMakeFiles/webserver.dir/src/main.cpp.o" \
"CMakeFiles/webserver.dir/src/base/Acceptor.cpp.o" \
"CMakeFiles/webserver.dir/src/base/Buffer.cpp.o" \
"CMakeFiles/webserver.dir/src/base/Channel.cpp.o" \
"CMakeFiles/webserver.dir/src/base/EventLoop.cpp.o" \
"CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.o" \
"CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.o" \
"CMakeFiles/webserver.dir/src/base/InetAddr.cpp.o" \
"CMakeFiles/webserver.dir/src/base/Kqueue.cpp.o" \
"CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.o" \
"CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.o" \
"CMakeFiles/webserver.dir/src/net/TcpServer.cpp.o" \
"CMakeFiles/webserver.dir/src/http/WebServer.cpp.o"

# External object files for target webserver
webserver_EXTERNAL_OBJECTS =

webserver: CMakeFiles/webserver.dir/src/main.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/Acceptor.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/Buffer.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/Channel.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/EventLoop.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/EventLoopthread.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/EventLoopthreadPool.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/InetAddr.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/Kqueue.cpp.o
webserver: CMakeFiles/webserver.dir/src/base/SocketOpt.cpp.o
webserver: CMakeFiles/webserver.dir/src/net/TcpConnection.cpp.o
webserver: CMakeFiles/webserver.dir/src/net/TcpServer.cpp.o
webserver: CMakeFiles/webserver.dir/src/http/WebServer.cpp.o
webserver: CMakeFiles/webserver.dir/build.make
webserver: CMakeFiles/webserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable webserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webserver.dir/build: webserver

.PHONY : CMakeFiles/webserver.dir/build

CMakeFiles/webserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webserver.dir/clean

CMakeFiles/webserver.dir/depend:
	cd /Users/jialuhu/CLionProjects/webserver/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jialuhu/CLionProjects/webserver /Users/jialuhu/CLionProjects/webserver /Users/jialuhu/CLionProjects/webserver/cmake-build-debug /Users/jialuhu/CLionProjects/webserver/cmake-build-debug /Users/jialuhu/CLionProjects/webserver/cmake-build-debug/CMakeFiles/webserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webserver.dir/depend
