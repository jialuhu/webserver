//
// Created by Jialu  Hu on 2019-10-27.
//

#ifndef UNTITLED_EVENTLOOPTHREAD_H
#define UNTITLED_EVENTLOOPTHREAD_H
#include <functional>
#include <thread>
#include <mutex>
#include <condition_variable>
class EventLoop;
class EventLoopthread{
public:
    EventLoopthread();
    ~EventLoopthread();
    void start();
    EventLoop* GetStartLoop();
private:
    void threadFunc();
    EventLoop* loop_;
    std::thread thread_;
    std::mutex mutex_;
    std::condition_variable condVar_;

};

#endif //UNTITLED_EVENTLOOPTHREAD_H
