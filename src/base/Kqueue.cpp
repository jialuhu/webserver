//
// Created by Jialu  Hu on 2019-08-02.
//

#include "Kqueue.h"
Kqueue::Kqueue(EventLoop *loop):owner_loop_(loop){
    kqfd = ::kqueue();
    assert(kqfd>0);
}

Kqueue::~Kqueue(){
    close(kqfd);
}
bool Kqueue::Register(Channel* channel,int fd) {
    struct kevent changes[1];
    EV_SET(&changes[0], fd, EVFILT_READ, EV_ADD, 0, 0, NULL);
    kqfds_.push_back(changes[0]);
    int idx = static_cast<int>(kqfds_.size())-1;
    channel->set_index(idx);
    channels_[fd] = channel;
    //Register 将 fd 注册到 kq 中
    // 注册的方法是通过 kevent() 将 eventlist 和 neventlist 置成 NULL 和 0 来达到的
    int ret = kevent(kqfd, changes, 1, nullptr, 0, nullptr);
    if (ret == -1){
        return false;
    }
    return true;
}

bool Kqueue::Change(Channel* channel,int fd){
    struct kevent changes[1];
    if(channel->is_close()){
        if(channel->index() == (kqfds_.size()-1))
        {
            kqfds_.pop_back();
        }
        else{
            int tmp_fd = kqfds_[kqfds_.size()-1].ident;
            int tmp_index = channel->index();
            iter_swap(kqfds_.begin()+channel->index(), kqfds_.end()-1);
            kqfds_.pop_back();
            channels_[tmp_fd]->set_index(tmp_index);
        }
        channels_.erase(channel->fd());
        EV_SET(&changes[0], fd, EVFILT_WRITE, EV_DELETE, 0, 0, NULL);
        EV_SET(&changes[0], fd, EVFILT_READ, EV_DELETE, 0, 0, NULL);
    } else if(channel->is_write()){
        EV_SET(&changes[0], fd, EVFILT_WRITE, EV_DELETE, 0, 0, NULL);
        channel->set_iswrite(false);
    }
    if(channel->event()==EVFILT_READ){
        EV_SET(&changes[0], fd, EVFILT_READ, EV_ADD, 0, 0, NULL);
    }
    if(channel->event()==EVFILT_WRITE){
        EV_SET(&changes[0], fd, EVFILT_WRITE, EV_ADD, 0, 0, NULL);
    }
    int ret = kevent(kqfd, changes, 1, nullptr, 0, nullptr);
    if (ret == -1) {
        return false;
    }
    return true;

}

void Kqueue::updateChannel(Channel* channel) {
    int idx = channel->index();
    int kfd = channel -> fd();
    if(idx<0){
        assert(channels_.find(kfd) == channels_.end());
        //该事件还未出现在事件注册表中,如新建立的链接
        //对该事件进行注册
        assert(Register(channel,kfd)==true);
    }
        //更新事件表
    else{
        assert(channels_.find(kfd)!=channels_.end());
        assert(channels_[kfd]==channel);
        assert(idx>=0 && idx<kqfds_.size());
        assert(Change(channel,kfd)==true);
    }
}
const int MAX_EVENT_COUNT = 50000;
void Kqueue::kqueue(int timeout, std::vector<Channel*> *activeChannel){
    for(auto it=channels_.begin();it!=channels_.end();it++){
        int id = it->first;
    }
    struct kevent krevents[MAX_EVENT_COUNT];
    int ret = ::kevent(kqfd, nullptr, 0, krevents, MAX_EVENT_COUNT, nullptr);
    if(ret>0) {
        for (int i=0; i<ret; i++) {
            int socketfd = krevents[i].ident;
            int setrv = krevents[i].filter;
            assert(channels_.find(socketfd) != channels_.end());
            auto actChannel = channels_[socketfd];
            assert(actChannel->fd() == socketfd);
            actChannel->set_revent(setrv);
            actChannel->set_flags(krevents[i].flags);
            activeChannel->push_back(actChannel);
        }
    }
    else if(ret==0){
        //std::cout << "Nothing happend\n";
    }
    else{
        //std::cout << "Kqueue::kqueue\n";
    }

}
