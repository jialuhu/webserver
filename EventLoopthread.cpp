//
// Created by Jialu  Hu on 2019-10-27.
//
#include "EventLoopthread.h"
#include "EventLoop.h"
EventLoopthread::EventLoopthread():
        loop_(nullptr),
        thread_([this]{this->threadFunc();})
{
    std::cout<<"&&&&&&&%%%%%%%%%%\n";
    //进行线程分离，保证该线程不被其他线程回收资源
    thread_.detach();
}

EventLoopthread::~EventLoopthread() {
    if(loop_){
        loop_->quit();
    }
}

EventLoop* EventLoopthread::GetStartLoop() {
    std::unique_lock<std::mutex> lock(mutex_);
    //等待新的线程获取到该线程的loop地址
    while (!loop_)
        condVar_.wait(lock);
    return loop_;
}

void EventLoopthread ::threadFunc() {
    EventLoop thread_loop;
    {
        std::lock_guard<std::mutex> lock(mutex_);
        loop_ = &thread_loop;
        condVar_.notify_one();
    }
    std::cout << "thread_loop\n";
    //****sleep(5);
    thread_loop.loop();
}
