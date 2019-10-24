//
// Created by Jialu  Hu on 2019-08-02.
//

#ifndef UNTITLED_KQUEUE_H
#define UNTITLED_KQUEUE_H

#include <sys/time.h>
#include <sys/types.h>
#include <sys/event.h>
#include <gmpxx.h>
#include "Channel.h"
#include "EventLoop.h"
#include <vector>
#include <map>
class Kqueue{
public:
    Kqueue(EventLoop* loop);
    ~Kqueue();

    void updateChannel(Channel* channel);
    void fillactiveChannel(int number,Channel *channel);
    void kqueue(int timeout, std::vector<Channel*> *activeChannel);

private:
    bool Register(Channel* channel,int fd);
    bool Change(Channel* channel,int fd);
    static int kqfd;
    typedef std::vector<struct kevent> KqueueList;
    typedef std::map<int,Channel*> Channel_Map;

    Channel_Map channels_;
    KqueueList kqfds_;
    EventLoop *owner_loop_;

};

#endif //UNTITLED_KQUEUE_H
