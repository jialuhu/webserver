//
// Created by Jialu  Hu on 2019-10-27.
//
#include "EventLoopthread.h"
#include "EventLoop.h"
/*EventLoopthread::EventLoopthread():
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
}*/
EventLoopthread::EventLoopthread()
        : _loop(nullptr),
        //exiting_(false),
          _thread([this]{ this->threadFunc(); })
{
    _thread.detach();
    //logInfo("[EventLoopThread::ctor]");
}

EventLoopthread::~EventLoopthread()
{
    if (_loop) _loop->quit();
    //logInfo("[EventLoopThread::dtor]");
}

EventLoop *EventLoopthread::getLoop()
{
    std::cout << "getLoop\n";
    std::unique_lock<std::mutex> mlock(_mutex);
    // wait for _loop to be constructed
    while (_loop == nullptr)
        _condVar.wait(mlock);
    std::cout << "_loop:&&&&:" << _loop << std::endl;
    return _loop;
}

void EventLoopthread::quit()
{
    //exiting_(false),
    _loop->quit();
}

void EventLoopthread::threadFunc()
{
    EventLoop loop;
    {
        std::lock_guard<std::mutex> mlock(_mutex);
        std::cout << "_loop:&&&&:" << &loop << std::endl;
        _loop = &loop;
        // let getLoop() to return
        _condVar.notify_one();
    }
    loop.loop();
}