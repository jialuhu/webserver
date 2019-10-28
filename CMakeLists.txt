cmake_minimum_required(VERSION 3.13)
project(untitled)

set(CMAKE_CXX_STANDARD 14)

add_executable(untitled main.cpp EventLoop.cpp Channel.cpp Kqueue.h Kqueue.cpp WebServer.h SocketOpt.cpp SocketOpt.h InetAddr.h Socket.h Acceptor.h InetAddr.cpp Acceptor.cpp TcpServer.h TcpServer.cpp WebServer.cpp TcpConnection.h TcpConnection.cpp CallBack.h Buffer.h Buffer.cpp HttpContent.h HttpRespond.h EventLoopthread.h EventLoopthread.cpp)