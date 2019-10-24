//
// Created by Jialu  Hu on 2019-08-02.
//

#ifndef UNTITLED_SOCKETOPT_H
#define UNTITLED_SOCKETOPT_H

#include <arpa/inet.h>
#include <sys/socket.h>
#include <assert.h>
#include <fcntl.h>
namespace SocketOpt{
    int socket();
    void bind(int sockfd, struct sockaddr_in *addr);
    void listen(int socketfd);
    int accept(int sockfd);
    int setnonblocking(int fd);
}
#endif //UNTITLED_SOCKETOPT_H
