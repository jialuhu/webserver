//
// Created by Jialu  Hu on 2019-08-04.
//

#ifndef UNTITLED_TCPSERVER_H
#define UNTITLED_TCPSERVER_H

#include "../base/EventLoop.h"
#include "../base/Channel.h"
#include "../base/EventLoopthread.h"
#include "../base/EventLoopthreadPool.h"
#include "../base/Acceptor.h"
#include "../base/CallBack.h"
#include "TcpConnection.h"
#include <map>
class Buffer;

class TcpServer{
public:
    explicit TcpServer(EventLoop *loop, InetAddr &listenAddr);
    ~TcpServer();
    void newConnection(int sockfd);
    void start();
    void quit();
    void setConnectionCb(ConnectionCallback cb){
        ConnectionCb_ = std::move(cb);
    }
    void setOnMessageCb(OnMessageCallback cb){
        OnMessageCb_ = std::move(cb);
    }
    void setCloseCb(CloseCallback cb){
        CloseCb_ = std::move(cb);
    }
    void setThreadNumber(size_t threadnumber);
    EventLoop* getNextLoop();
    void removeConnection(const TcpConnectionPtr &conn);
private:
    EventLoopthreadPool* ioThreadPool_;
    EventLoop *loop_;
    InetAddr listenAddr_;
    Acceptor *acceptor_;
    ConnectionCallback ConnectionCb_;
    OnMessageCallback OnMessageCb_;
    CloseCallback CloseCb_;
    int countId;
    std::map<std::string, TcpConnectionPtr> connections_;
};
#endif //UNTITLED_TCPSERVER_H
