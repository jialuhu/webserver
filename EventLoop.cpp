
// Created by Jialu  Hu on 2019-07-31.
//
#include "EventLoop.h"
#include "Channel.h"
#include "Kqueue.h"
//#include "SocketOpt.h"
#include "MutexLock.h"
class IgnoreSignal{
public:
    IgnoreSignal(){
        ::signal(SIGPIPE,SIG_IGN);
    }
};

IgnoreSignal ignoreSignal;

thread_local EventLoop* t_loopInThisThread = nullptr;
EventLoop ::EventLoop() :
        quit_(false),
        looping_(false),
        callingPendingFunctors_(false),
        threadId_(std::this_thread::get_id()),
        wakeupChannel_(),
        Kqueue_(new Kqueue(this))
       {
    //判断是否是属于本线程
    if(t_loopInThisThread){
       // std::cout << "This thread is used\n";
    }
    else{
        t_loopInThisThread = this;
    }

    //初始化唤醒事件的fd以及唤醒事件channel
    //SocketOpt::socketpair(wakeupFd);
    //将可读事件作为唤醒事件
    //wakeupFd = SocketOpt::socketpair();
    SocketOpt::socketpair(wakeupFd);
    //std::cout << "^^^@@@: " << wakeupFd[0] <<" " << wakeupFd[1] << "\n";
    wakeupChannel_ = std::shared_ptr<Channel>(new Channel(this,wakeupFd[0]));
    wakeupChannel_->setReadCallback(std::bind(&EventLoop::handleread,this));
    wakeupChannel_->enableReading();

}

EventLoop :: ~EventLoop(){
    //std::cout << "Eventloop析构函数\n";
    assert(!looping_);
    t_loopInThisThread = nullptr;
}

void EventLoop::quit() {
    quit_ = true;
}

void EventLoop::updateChannel(Channel* channel) {
    //std::cout << "zevent loop update\n";
    assert(channel->ownerloop()==this);
    Kqueue_ -> updateChannel(channel);
}

void EventLoop::loop() {
    assert(!looping_);
    looping_ = true;
    quit_ = false;
    while(!quit_){
        activeChannel_.clear();
        Kqueue_->kqueue(-1,&activeChannel_);
        auto ends = activeChannel_.end();
        for(auto it=activeChannel_.begin(); it != ends; it++){
            (*it) -> handleEvent();
        }
        doPendingFunctors();
    }

    looping_ = false;
}
void EventLoop::runInLoop(const Functor &cb) {
    //如果是当前IO线程调用，则直接可以执行，即同步执行；
    //如果不是在当前线程调用的runInLoop，则加入任务队列，IO线程会被唤醒执行该回调
    if(isInLoopThread()){
        //std::cout << "RunInLoop当前线程，直接执行\n";
        cb();
    }
    else{
        //std::cout << "RunInLoop不在当前线程，加入队列稍后执行\n";
        queueInLoop(cb);
    }
}

void EventLoop::doPendingFunctors() {
    //避免阻塞，提高效率
    std::vector<Functor> functors;
    //因为调用queueInloop的时候，如果是在functors里调用的话，需要唤醒IO线程，防止阻塞在kqueue上
    callingPendingFunctors_ = true;
    {
        MutexGround locks(mutex_);
        functors.swap(pendingFunctors_);
    }
    for (size_t i = 0; i < functors.size(); ++i)
    {
        functors[i]();
    }
    callingPendingFunctors_ = false;
}
void EventLoop::wakeup() {
    uint64_t one = 1;
    //向wakeupFd[1]写入8个字节，唤醒阻塞线程
    size_t n = ::write(wakeupFd[1],&one, sizeof(one));
    if(n != sizeof(one)){
        //std::cout << "EventLoop wakeup is wrong bites: " << sizeof(one) << std::endl;
    }
}

void EventLoop::handleread() {
    uint64_t one;
    size_t n = ::read(wakeupFd[0], &one, sizeof(one));
    if(n != sizeof(one)){
       // std::cout << "EventLoop handleread is wrong bites: " << sizeof(one) << std::endl;
    }
}
/**为什么要在这两种情况下有必要唤醒IO线程？
 * Part1：如果调用queueInLoop不是在IO线程中，此时的IO线程正在阻塞在多路复用的调用中，比如epoll，poll此类函数，
 * 正在等待有活跃的事件发生的时候，如果不唤醒IO线程打破阻塞状态，那么程序将不会执行到IO线程的发生事件执行回调函数，
 * 即doPendingFunctors不会执行，也就是functors不会执行。
 * Part2：如果调用queueInLoop是在IO线程中，而此时的IO线程正在执行doPendingFunctors中的functors，而在functors，
 * 中又进行了调用queueInLoop，此时需要再次触发IO线程下一次的唤醒，保证不会阻塞在IO线程上。
 * Part3：只有在Handleevent中调用queueInLoop才不需要被唤醒，因为接下来将会调用doPendingFunctors。
 * @param cb
 */
void EventLoop::queueInLoop(const Functor &cb) {
    {
        //其中，可以在IO线程调用queueInLoop也可以由于Function在其他线程中进行执行
        //所以该函数暴露给了其他线程，再加入任务队列的时候，需要加锁
        MutexGround lock(mutex_);
        pendingFunctors_.push_back(cb);
    }
    if(!isInLoopThread() || callingPendingFunctors_){
        wakeup();
    }
}