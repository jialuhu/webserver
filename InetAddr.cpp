//
// Created by Jialu  Hu on 2019-08-03.
//

#include "InetAddr.h"
#include <strings.h>
#include <iostream>
#include <sys/socket.h>
InetAddr::InetAddr(int port):port_(port) {
    bzero(&address_, sizeof(address_));
}

InetAddr::~InetAddr() {

}

void InetAddr :: Init(){
    std::cout << "port: " << port_ << std::endl;
    address_.sin_family = AF_INET;
    address_.sin_port = htons(port_);
    address_.sin_addr.s_addr = htons(INADDR_ANY);
}
