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
class Epoll;
class Channel;
class Kqueue;
class  EventLoop{
public:
    EventLoop();
    ~EventLoop();

    void loop();
    void quit();
    void updateChannel(Channel* channel);
    //void removeChannel(Channel *channel);

    bool isInLoopThread(){
        return std::this_thread::get_id()==threadId_;
    }

private:
    boost::scoped_ptr <Kqueue> Kqueue_;
    //boost::scoped_ptr <Epoll> Epoller_;
    //boost::scoped_ptr <Channel> channel_;
    std::vector<Channel*> activeChannel_;

    bool quit_;
    bool looping_;
    bool callingPendingFunctors_;

    std::thread::id threadId_;
};



#endif //TINY_WEB_EVENTLOOP_H
