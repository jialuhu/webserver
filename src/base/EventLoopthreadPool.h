//
// Created by Jialu  Hu on 2019-10-30.
//

#ifndef UNTITLED_EVENTLOOPTHREADPOOL_H
#define UNTITLED_EVENTLOOPTHREADPOOL_H

#include "EventLoopthread.h"
#include <vector>
#include <iostream>
class EventLoopthreadPool{
public:
    EventLoopthreadPool():ThreadNumber_(0),
            NextIndex_(0){
        std::cout << "EventLoopthreadpool is created.";

    }
    ~EventLoopthreadPool(){

    }
    EventLoop* GetioLoop();
    void SetThreadNumber(size_t thread_number);
    size_t GetThreadNumber(){
        return ThreadNumber_;
    }
    void start();

private:
    size_t ThreadNumber_;
    int NextIndex_;
    std::vector<std::unique_ptr<EventLoopthread>> IothreadPool_;
    std::vector<EventLoop*> EventIOLoops_;
};
#endif //UNTITLED_EVENTLOOPTHREADPOOL_H
