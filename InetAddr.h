//
// Created by Jialu  Hu on 2019-08-03.
//

#ifndef UNTITLED_INETADDR_H
#define UNTITLED_INETADDR_H
#include <netinet/in.h>

class InetAddr{
public:
    InetAddr(int port,const char* c_addr);
    ~InetAddr();
    void Init();
    struct sockaddr_in* inetaddr(){
        return &address_;
    }
    struct sockaddr_in address_;
    __const char* c_addr_;
    const int port_;
};

#endif //UNTITLED_INETADDR_H
