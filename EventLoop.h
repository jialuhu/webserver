//
// Created by Jialu  Hu on 2019-07-31.
//

#ifndef TINY_WEB_EVENTLOOP_H
#define TINY_WEB_EVENTLOOP_H

#include <vector>
#include <sys/types.h>
#include <sys/event.h>
#include <sys/time.h>
#include <boost/function.hpp>
#include <boost/scoped_ptr.hpp>
#include <memory>
#include <unistd.h>
#include <assert.h>
#include <iostream>
#include <thread>
#include "MutexLock.h"
#include "SocketOpt.h"
class Epoll;
class Channel;
class Kqueue;
typedef boost::function<void ()> Functor;
class  EventLoop{
public:
    EventLoop();
    ~EventLoop();

    void loop();
    void quit();
    void updateChannel(Channel* channel);

    bool isInLoopThread(){
        return std::this_thread::get_id()==threadId_;
    }
    void runInLoop(const Functor& cb);
    void doPendingFunctors();
    void handleread();
    void queueInLoop(const Functor& cb);
    void wakeup();
private:
    boost::scoped_ptr <Kqueue> Kqueue_;
    std::shared_ptr<Channel> wakeupChannel_;
    std::vector<Channel*> activeChannel_;
    //wakeupFd[0]读
    //wakeupFd[1]写
    int wakeupFd[2];
    bool quit_;
    bool looping_;
    bool callingPendingFunctors_;

    std::thread::id threadId_;
    Mutex mutex_;
    std::vector<Functor> pendingFunctors_;



};



#endif //TINY_WEB_EVENTLOOP_H
