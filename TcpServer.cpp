//
// Created by Jialu  Hu on 2019-08-04.
//
#include "TcpServer.h"
TcpServer::TcpServer(EventLoop *loop, InetAddr &listenAddr):
            loop_(loop),
            listenAddr_(listenAddr),
            countId(0),
            acceptor_(new Acceptor(loop,listenAddr)){
    acceptor_->setNewConnectionCallback( std::bind(&TcpServer::newConnection,
            this, std::placeholders::_1));
}

TcpServer::~TcpServer() {
    std::cout << "~TcpServer\n";

}

void TcpServer::start() {
    acceptor_->listen();
}

void TcpServer::quit(){
    loop_ -> quit();
}
//***************************
void TcpServer::newConnection(int connfd) {
    //此处建立相对应的连接事件，并且设置读写事件
     char buf[13]={"hello"};
     countId++;
     sprintf(buf,"%s_%d",buf,countId++);
     //std::cout << "conn->name1: " << buf << std::endl;
     std::string s1(buf);
     //std::cout << "conn->name2: " << s1 << std::endl;
     TcpConnectionPtr conn(new TcpConnection(loop_,s1,connfd,listenAddr_));
     connections_[s1]= conn;
     conn->setConnectionCb(ConnectionCb_);
     conn->setMessageCb(OnMessageCb_);
     conn->setCloseCb(std::bind(&TcpServer::removeConnection,this,std::placeholders::_1));
     conn->connectEstablished();
     std::cout << "设置回调，执行回调\n";
}
//*************************
void TcpServer::removeConnection(const TcpConnectionPtr &conn){
    int n = connections_.erase(conn->name());
}