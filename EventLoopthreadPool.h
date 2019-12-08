//
// Created by Jialu  Hu on 2019-10-30.
//

#ifndef UNTITLED_EVENTLOOPTHREADPOOL_H
#define UNTITLED_EVENTLOOPTHREADPOOL_H

#include "EventLoopthread.h"
#include <vector>
class EventLoopthreadPool{
public:
    EventLoopthreadPool():ThreadNumber_(0),
            NextIndex_(0),
            IothreadPool_(),
            EventIOLoops_(){

    }
    ~EventLoopthreadPool(){
        //std::cout << "EventLoop leadks~\n";
    }
    EventLoop* GetioLoop();
    void SetThreadNumber(int thread_number);
    int GetThreadNumber(){
        return ThreadNumber_;
    }
    void start();

private:
    int ThreadNumber_;
    int NextIndex_;
    std::vector<EventLoopthread*> IothreadPool_;
    std::vector<EventLoop*> EventIOLoops_;
};
#endif //UNTITLED_EVENTLOOPTHREADPOOL_H
