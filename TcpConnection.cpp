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
    std::cout << "~TcpConnection： " << this << std::endl;
}
void TcpConnection::connectEstablished() {
    std::cout << "connectEstablished is build\n";
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
    std::cout << "读取HTTP包 " << channel_->fd() << std::endl;
    int bytes = input_.readFd(channel_->fd(),saveErrno);
    if(bytes>0){
        std::cout << "有消息!!\n";
        onMessageCb_(shared_from_this(),input_);
    }
    else{
        HandleClose();
    }
    /*else if(bytes==0){
        std::cout << "BBbbbbbbbyte = 0\n";
        HandleClose();
    }
    else{
        std::cout << "AABBbbbbbbbyte = 0\n";
        errno = saveErrno;
        HandleErrno();
    }*/
}
void TcpConnection::HandleClose() {
   /* std::cout << "读取HTTP包1 " << channel_->fd() << std::endl;
    conn_state = CONNCTED;
    //我在这里以及删除fd了*/
    //channel_->disableAll();
    //CloseCb_(shared_from_this());
  if(CloseCb_){
      channel_->disableAll();
       loop_->runInLoop(std::bind(CloseCb_, shared_from_this()));
   }
}
void TcpConnection::connDestroyed(){
    loop_->assertInLoopThread();
    channel_->disableAll();
    //loop_->removeChannel(get_pointer(channel_));
}
void TcpConnection::set_HandleErrno(int fd, std::string &head) {
    std::cout << "读取HTTP包2 " << channel_->fd() << std::endl;
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
    std::cout << argv_ << std::endl;
    if(fork()==0)
    {
        dup2(channel_->fd(),STDOUT_FILENO);
        int r=execl(file_path_,argv_,NULL);
    }
    wait(nullptr);
}
void TcpConnection::set_Handlewrite(const char* filepath, int fd,std::string &head) {
    //**响应头的填充
    struct stat tbuf;
    fstat(fd,&tbuf);

    char buf[100];
    sprintf(buf,"Content-Length: %d\r\n\r\n",tbuf.st_size);
    buf[strlen(buf)]='\0';
    head = head+buf;
    respond_head = head;
    write(channel_->fd(),respond_head.c_str(),respond_head.size());
    int save;
    int sum = 0;
    int n;
    output_.readFd(fd,save);
    while ((n=output_.readFd(fd,save))>0){
        sum += n;
    }
    channel_->enableWriting();
}


//**************此处需要修改
void TcpConnection::HandleWrite(){
    int ret;
    ret = ::write(channel_->fd(), output_.peek(), output_.readable());
    if(ret == -1){
        HandleErrno();
    }
    if(ret == output_.readable()){
        channel_->disableWriting();
    }
    output_.update(ret);

}