//
// Created by Jialu  Hu on 2019-08-02.
//

#ifndef UNTITLED_WEBSERVER_H
#define UNTITLED_WEBSERVER_H

#include "../base/InetAddr.h"
#include "../net/TcpServer.h"
#include "../base/CallBack.h"
#include <iostream>
#include <netinet/in.h>
class GetConfig;

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
    void setConfig(const char* SP, const char* CGIP, const char* DOCP,bool B_CGI){
        SP_.insert(0,SP);
        CGIP_.insert(0,CGIP);
        DOCP_.insert(0,DOCP);
        B_CGI_ = B_CGI;
    }
    void quit_server();
private:
    EventLoop *loop_;
    TcpServer server_;
    std::string SP_;
    std::string CGIP_;
    std::string DOCP_;
    bool B_CGI_;
};

#endif //UNTITLED_WEBSERVER_H
