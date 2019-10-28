//
// Created by Jialu  Hu on 2019-10-27.
//

#ifndef UNTITLED_EVENTLOOPTHREAD_H
#define UNTITLED_EVENTLOOPTHREAD_H
#include <functional>
#include <thread>
#include <mutex>
#include <condition_variable>
/*class EventLoop;
class EventLoopthread{
public:
    EventLoopthread();
    ~EventLoopthread();
    EventLoop* GetStartLoop();
private:
    void threadFunc();
    EventLoop* loop_;
    std::thread thread_;
    std::mutex mutex_;
    std::condition_variable condVar_;
};*/
class EventLoop;

// One-loop-per-thread
class EventLoopthread {
public:
    EventLoopthread();
    ~EventLoopthread();
    EventLoop *getLoop();
    EventLoop *getAssertTrueLoop() { return _loop; }
    void quit();
private:
    void threadFunc();

    EventLoop *_loop;
    std::thread _thread;
    std::mutex _mutex;
    std::condition_variable _condVar;
};
#endif //UNTITLED_EVENTLOOPTHREAD_H
