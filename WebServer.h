//
// Created by Jialu  Hu on 2019-08-02.
//

#ifndef UNTITLED_WEBSERVER_H
#define UNTITLED_WEBSERVER_H

#include "InetAddr.h"
#include "TcpServer.h"
#include "CallBack.h"
#include <iostream>
#include <netinet/in.h>

class WebServer{
public:
    WebServer(EventLoop *loop, InetAddr &addr);
    ~WebServer();
    void onMessage(const TcpConnectionPtr &conn, Buffer &buf);
    void onConnection(const TcpConnectionPtr &conn);
    void start();
    void setThread(size_t number){
        server_.setThreadNumber(number);
    }
    void quit_server();
private:
    EventLoop *loop_;
    TcpServer server_;
};

#endif //UNTITLED_WEBSERVER_H
