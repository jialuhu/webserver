//
// Created by Jialu  Hu on 2019-08-04.
//
#include "TcpConnection.h"
#include <sys/stat.h>
#include <sys/mman.h>
TcpConnection::TcpConnection(EventLoop *loop,
        std::string conn_name, int connfd, InetAddr &local):
        loop_(loop),
        conn_name_(conn_name),
        connfd_(connfd),
        socket_(new Socket(connfd)),
        LocalAddr_(local),
        conn_state(CONNECTING),
        channel_(new Channel(loop,connfd)){
    channel_->setReadCallback([this]{this->HandleRead();});
    channel_->setWriteCallback([this]{this->HandleWrite();});
    channel_->setErnnoCallback([this]{this->HandleErrno();});
    channel_->setCloseCallback([this]{this->HandleClose();});
}
TcpConnection::~TcpConnection() {

}
void TcpConnection::connectEstablished() {
    assert(conn_state==CONNECTING);
    conn_state = CONNCTED;
    channel_->enableReading();
    //设置用户回调,进行事件注册
    connectionCb_(shared_from_this());
}

void TcpConnection::HandleRead(){
    //此处用Buffer读取出接收到的数据，然后交给onMessageCb进行处理，
    //在Webserver中进行数据分析
    int saveErrno = 0;
    int bytes = input_.readFd(channel_->fd(),saveErrno);
    if(bytes>0){
        if(onMessageCb_){
            loop_->runInLoop(std::bind(onMessageCb_, shared_from_this(),input_));
        }
    }
    else{
        HandleClose();
    }

}
void TcpConnection::HandleClose() {
  if(CloseCb_){
          loop_->runInLoop(std::bind(CloseCb_, shared_from_this()));
  }
}
void TcpConnection::connDestroyed(){
    loop_->assertInLoopThread();
    channel_->disableAll();
}
void TcpConnection::set_HandleErrno(int fd, std::string &head) {
    respond_head = head;
    write(channel_->fd(),respond_head.c_str(),respond_head.size());
    HandleClose();
}

void TcpConnection::HandleErrno() {

    HandleClose();
}

void TcpConnection::Post_deal(const char* file_path, const char *argv){
    file_path_=file_path;
    argv_=argv;
    //std::cout << "arg:" << argv_ << std::endl;
    if(fork()==0)
    {
        dup2(channel_->fd(),STDOUT_FILENO);
        int r=execl(file_path_,argv_,NULL);
    }
    wait(nullptr);
}

void TcpConnection::set_Handlewrite(int fd,std::string &head) {
    write(channel_->fd(),head.c_str(),head.size());
    int save;
    int sum = 0;
    int n;
    output_.readFd(fd,save);
    while ((n=output_.readFd(fd,save))>0){
        sum += n;
    }
    channel_->enableWriting();
}


void TcpConnection::HandleWrite(){
    int ret;
    if(channel_->isWriting()){
        ret = ::write(channel_->fd(), output_.peek(), output_.readable());
        if(ret < 0){
            HandleErrno();
        }
        if(ret == output_.readable()){
            output_.update(ret);
            channel_->disableWriting();
            HandleClose();
        }
        else{
            output_.update(ret);
        }
    }

}
