//
// Created by Jialu  Hu on 2019-08-04.
//
#include "TcpServer.h"
#include "EventLoopthread.h"

TcpServer::TcpServer(EventLoop *loop, InetAddr &listenAddr):
            loop_(loop),
            listenAddr_(listenAddr),
            ioThreadPool_(new EventLoopthreadPool),
            countId(0),
            acceptor_(new Acceptor(loop,listenAddr)){
    acceptor_->setNewConnectionCallback( std::bind(&TcpServer::newConnection,
            this, std::placeholders::_1));
    ioThreadPool_->SetThreadNumber(10);
}

TcpServer::~TcpServer() {
    std::cout << "~TcpServer\n";

}

void TcpServer::setThreadNumber(int threadnumber)  {
    ioThreadPool_->SetThreadNumber(threadnumber);
}

void TcpServer::start() {
    acceptor_->listen();
}

void TcpServer::quit(){
    loop_ -> quit();
}

void TcpServer::newConnection(int connfd) {
    //此处建立相对应的连接事件，并且设置读写事件
     char buf[13]={"hello"};
     countId++;
     sprintf(buf,"%s_%d",buf,countId++);
     /**
      * 此处从线程池中取出一个线程，并且用EventLoop指向
      */
     //EventLoopthread test_loop;
     EventLoop *test = ioThreadPool_->GetioLoop();
     //EventLoop* test = test_loop.GetStartLoop();
     std::string s1(buf);
     /*loop changed*/

     TcpConnectionPtr conn(new TcpConnection(test,s1,connfd,listenAddr_));
     connections_[s1]= conn;
     conn->setConnectionCb(ConnectionCb_);
     conn->setMessageCb(OnMessageCb_);
     conn->setCloseCb(std::bind(&TcpServer::removeConnection,this,std::placeholders::_1));

     /**
      * 用线程池的线程runInLoop
      */
      test->runInLoop(std::bind(&TcpConnection::connectEstablished, conn));
      /*单线程模式
       * */
     //conn->connectEstablished();
}

void TcpServer::removeConnection(const TcpConnectionPtr &conn){
    /**
     *为什么在此处，多线程执行的话需要由主循环结束?
     * Part1:因为在newconnection中的时候，已经将HTTP请求的处理交给了新创建的IO线程处理了，所以在新的IO线程中，将会
     * 触发结束套接字的功能模块，那此时该代码块将有可能会被多个线处理。
     * Part2：所以避免乱套，需要加入主循环EventLoop中，依次被关闭套接字
     * 此处需要对于多线程进行一定修改
     */
     /**
      * 与单线程不同
      */

    //EventLoop *io = conn->getLoop();
    //io->runInLoop(std::bind(&TcpConnection::connDestroyed,conn));
    int n = connections_.erase(conn->name());
    assert(n==1);
}

void TcpServer::removeConnInLoop(const TcpConnectionPtr &conn) {
    loop_->assertInLoopThread();
    auto e = connections_.find(conn->name());
    if(e==connections_.end()){
        std::cout << "没有找到conn->name: " << conn->name() << std::endl;
        std::cout << "find no element\n";
    }else{
        std::cout << "找到conn->name: " << conn->name() << std::endl;
    }
    /*size_t n = connections_.erase(conn->name());
    std::cout << "^^^^n: " << n << std::endl;
    assert(n==1);*/
    EventLoop *io = conn->getLoop();
    io->queueInLoop(std::bind(&TcpConnection::connDestroyed,conn));
}
