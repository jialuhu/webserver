//
// Created by Jialu  Hu on 2019-08-04.
//
#include "WebServer.h"
#include "../base/EventLoop.h"
#include "../base/Acceptor.h"
#include "HttpContent.h"

WebServer::WebServer(EventLoop *loop, InetAddr &addr):loop_(loop),
    server_(loop,addr){
    server_.setConnectionCb(std::bind(&WebServer::onConnection,this,std::placeholders::_1));
    server_.setOnMessageCb(std::bind(&WebServer::onMessage,this,std::placeholders::_1,std::placeholders::_2));
}
WebServer::~WebServer(){

}
void WebServer::start() {
    server_.start();
}

void WebServer::quit_server() {
    server_.quit();
}

void WebServer::onMessage(const TcpConnectionPtr &conn, Buffer &buf) {
    auto &httpcontent = boost::any_cast<HttpContent&>(conn->getContext());
    httpcontent.setConfig(SP_,CGIP_,DOCP_,B_CGI_);
    httpcontent.doit(conn,buf);
}

void WebServer::onConnection(const TcpConnectionPtr &conn) {
    conn->setContext(HttpContent());
}


