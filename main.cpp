#include "WebServer.h"
#include "GetConfig.h"

int main(){
    GetConfig GetConfig_ ("/Users/jialuhu/CLionProjects/webserver/httped.conf");
    GetConfig_.ReadConfig();
    GetConfig_.display();
    EventLoop loop;
    InetAddr addr(GetConfig_.Return_Listen(),GetConfig_.Return_ADDR());
    WebServer server(&loop,addr);
    server.setConfig(GetConfig_.Return_ServerRoot(),
            GetConfig_.Return_CGIPath(),
            GetConfig_.Return_DocumentPath(),
            GetConfig_.Return_CGI()
    );
    server.setThread(GetConfig_.Return_ThreadN());
    server.start();
    loop.loop();
    return 0;
}
