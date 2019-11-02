//
// Created by Jialu  Hu on 2019-08-01.
//
#include "Channel.h"
#include "EventLoop.h"

Channel ::Channel(EventLoop *eventLoop, int fd) :
        eloop_(eventLoop),
        fd_(fd),
        event_(0),
        revents_(0),
        isclose(false),
        iswrite(false),
        indx(-1)
        {

}

Channel :: ~Channel(){
    std::cout << "Channel析构了\n";
}

//更新时间表
void Channel :: update() {
    eloop_ ->updateChannel(this);
}

//执行回调函数
void Channel :: handleEvent() {
    //eventHanding保证在处理事件期间Channel不被析构
    eventHanding_ = true;
    //客户端关闭链接
    std::cout << "事件: "<< revents_ << std::endl;
    std::cout << "关闭状态: " << is_close() << std::endl;
    if((revents_ == EVFILT_READ) && !is_close()) {
        if (ReadCallback) {
            //std::cout << "有可以读的事件\n\n";
            ReadCallback();
            //std::cout << "有可以读的事件\n\n";
        }
    }
    if((revents_ == EVFILT_WRITE) && !is_close()) {
        //std::cout << "EVFILE_WRITE: " << revents_ << std::endl;
        if (WriteCallback) {
            std::cout << "进入有写事件\n\n";
            WriteCallback();
            //std::cout << "进入有写事件\n\n";
        }
    }
    if((flags_ == 32769) && (is_close())){
        std::cout << "关闭连接\n\n";
        if(CloseCallback){
            CloseCallback();
            std::cout << "关闭连接******\n\n";
        }
        std::cout << "Client is closed\n";
    }
    if((flags_ == ENOENT) | (flags_==EINVAL) | (flags_==EPIPE) | (flags_==EBADF) )
    {
        std::cout << "Handle kqueue is wrong!!!\n";
    }
    eventHanding_ = false;
    std::cout << "eventHanding: " << eventHanding_ << std::endl;
}
