//
// Created by Jialu  Hu on 2019-08-04.
//

#ifndef UNTITLED_TCPCONNECTION_H
#define UNTITLED_TCPCONNECTION_H
#include <boost/any.hpp>
#include <boost/enable_shared_from_this.hpp>
#include <boost/noncopyable.hpp>
#include <boost/scoped_ptr.hpp>
#include <boost/shared_ptr.hpp>
#include <string>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/uio.h>
#include "InetAddr.h"
#include "TcpServer.h"
#include "Buffer.h"

class TcpConnection : boost::noncopyable,
public boost::enable_shared_from_this<TcpConnection>
{
public:
    //记录连接的状态
    enum State{
        CONNECTING,
        CONNCTED,
        CLOSED,
    };
    TcpConnection(EventLoop* loop, std::string cooname,int connfd, InetAddr &local);
    ~TcpConnection();
    void setConnectionCb(ConnectionCallback cb){
        connectionCb_ = std::move(cb);
    }
    void setMessageCb(OnMessageCallback cb){
        onMessageCb_ = std::move(cb);
    }
    void setCloseCb(CloseCallback cb){
        CloseCb_ = std::move(cb);
    }
    //设置具体的连接对象
    void setContext(const boost::any context){
        context_ = std::move(context);
    }
    //返回具体的连接对象
    boost::any& getContext(){
        return context_;
    }
    const std::string& name() const {
        return conn_name_;
    }
    int sockfds(){
        return connfd_;
    }
    std::shared_ptr<Channel> getChannel() const {return channel_;}
    //进行用户的回调
    void connectEstablished();
    void Post_deal(const char* file_path, const char *argv);
    void set_Handlewrite(const char* filepath,int fd, std::string &head);
    void set_HandleErrno(int fd, std::string &head);
    void connDestroyed();
    EventLoop* getLoop() const { return loop_; }
private:
    typedef boost::function<void (TcpConnection &)> ConnectionCallbacks;
    void HandleRead();
    void HandleWrite();
    void HandleClose();
    void HandleErrno();
    std::shared_ptr<Channel> channel_;
    EventLoop *loop_;
    std::string conn_name_;
    int connfd_;
    InetAddr LocalAddr_;
    boost::scoped_ptr<Socket> socket_;
    State conn_state;
    ConnectionCallback connectionCb_;
    OnMessageCallback onMessageCb_;
    CloseCallback CloseCb_;
    Buffer input_;
    std::string respond_head;
    Buffer output_;
    boost::any context_;


    const char*file_path_;
    const char* argv_;

};
#endif //UNTITLED_TCPCONNECTION_H
