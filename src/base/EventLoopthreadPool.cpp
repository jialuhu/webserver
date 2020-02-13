//
// Created by Jialu  Hu on 2019-10-30.
//
#include "EventLoopthreadPool.h"
#include <iostream>
void EventLoopthreadPool::SetThreadNumber(size_t thread_number){
    ThreadNumber_ = thread_number;
    start();
}



EventLoop* EventLoopthreadPool::GetioLoop() {
    EventLoop *itLoop;
    if(!EventIOLoops_.empty()){
        itLoop = EventIOLoops_[NextIndex_++];
        if(NextIndex_>=ThreadNumber_){
            NextIndex_ = 0;
        }
    }
    return itLoop;

}
void EventLoopthreadPool::start() {
    for(int i=0; i<ThreadNumber_; i++){
        auto one_thread = std::unique_ptr<EventLoopthread>(new EventLoopthread);
        one_thread->start();
        IothreadPool_.push_back(std::move(one_thread));
        //每个线程进入loop状态
        while (!one_thread->GetStartLoop()){

        }
        EventIOLoops_.push_back(one_thread->GetStartLoop());
    }
}