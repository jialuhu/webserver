
// Created by Jialu  Hu on 2019-07-31.
//
#include "EventLoop.h"
#include "Channel.h"
#include "Kqueue.h"
class IgnoreSignal{
public:
    IgnoreSignal(){
        ::signal(SIGPIPE,SIG_IGN);
    }
};

IgnoreSignal ignoreSignal;

thread_local EventLoop* t_loopInThisThread = nullptr;
EventLoop ::EventLoop() :
        quit_(false),
        looping_(false),
        callingPendingFunctors_(false),
        threadId_(std::this_thread::get_id()),
        Kqueue_(new Kqueue(this))
       {
    //判断是否是属于本线程
    if(t_loopInThisThread){
        std::cout << "This thread is used\n";
    }
    else{
        t_loopInThisThread = this;
    }
}

EventLoop :: ~EventLoop(){
    std::cout << "Eventloop析构函数\n";
    assert(!looping_);
    t_loopInThisThread = NULL;
}

void EventLoop::quit() {
    quit_ = true;
}

void EventLoop::updateChannel(Channel* channel) {
    assert(channel->ownerloop()==this);
    Kqueue_ -> updateChannel(channel);
}

void EventLoop::loop() {
    assert(!looping_);
    looping_ = true;
    quit_ = false;
    while(!quit_){
        activeChannel_.clear();
        Kqueue_->kqueue(-1,&activeChannel_);
        auto ends = activeChannel_.end();
        for(auto it=activeChannel_.begin(); it != ends; it++){
            (*it) -> handleEvent();
        }
    }
    looping_ = false;
}
