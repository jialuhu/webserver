//
// Created by Jialu  Hu on 2019-08-03.
//

#ifndef UNTITLED_SOCKET_H
#define UNTITLED_SOCKET_H
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/tcp.h>
#include <assert.h>
#include "SocketOpt.h"
class Socket{
public:
    explicit Socket(int fd):sockfd_(fd){
        SocketOpt::setnonblocking(sockfd_);
        assert(sockfd_>0);
    }
    ~Socket(){::close(sockfd_);};
    int sockfd(){
        return sockfd_;
    }
private:
    const int sockfd_;
};

#endif //UNTITLED_SOCKET_H
