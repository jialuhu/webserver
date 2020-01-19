//
// Created by Jialu  Hu on 2019-08-04.
//
#include "WebServer.h"
#include "EventLoop.h"
#include "Acceptor.h"
#include "HttpContent.h"

WebServer::WebServer(EventLoop *loop, InetAddr &addr):loop_(loop),
    server_(loop,addr){
    server_.setConnectionCb(std::bind(&WebServer::onConnection,this,std::placeholders::_1));
    server_.setOnMessageCb(std::bind(&WebServer::onMessage,this,std::placeholders::_1,std::placeholders::_2));
}
WebServer::~WebServer(){
    //std::cout << "~WebServer\n";

}
void WebServer::start() {
    server_.start();
}

void WebServer::quit_server() {
    server_.quit();
}

void WebServer::onMessage(const TcpConnectionPtr &conn, Buffer &buf) {
    //根据读的结果放入线程池里
    std::string mystring;
    auto &httpcontent = boost::any_cast<HttpContent&>(conn->getContext());
    httpcontent.setConfig(SP_,CGIP_,DOCP_,B_CGI_);
    httpcontent.doit(conn,buf);
}

void WebServer::onConnection(const TcpConnectionPtr &conn) {
    //建立新的http事件
    //std::cout << "WebServer::onConnection\n";
    conn->setContext(HttpContent());
}


