#include <iostream>
#include <unistd.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/event.h>
#include <sys/unistd.h>
#include <fcntl.h>
#include "Buffer.h"
#include "TcpConnection.h"
#include "WebServer.h"
#include "EventLoopthread.h"
#include "EventLoopthreadPool.h"
int main(){
    //EventLoopthreadPool *it;
   //std::thread::id thread;
    //thread = std::this_thread::get_id();
    //std::cout << "主线程ID: " << thread << "\n";
    EventLoop loop;
    InetAddr addr(8888);
    WebServer server(&loop,addr);
    server.setThread(0);
    server.start();
    loop.loop();
    return 0;
}