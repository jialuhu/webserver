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

int main(){
    EventLoop loop;
    InetAddr addr(8888);
    WebServer server(&loop,addr);
    server.start();
    loop.loop();
    return 0;
}
