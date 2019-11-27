//
// Created by Jialu  Hu on 2019-08-06.
//

#ifndef UNTITLED_HTTPCONTENT_H
#define UNTITLED_HTTPCONTENT_H

#include "TcpConnection.h"
#include "HttpRespond.h"
class HttpContent{
public:
    /*NO_REQUESTION是代表请求不完整，需要客户继续输入；
     * BAD_REQUESTION是HTTP请求语法不正确；
     * GET_REQUESTION代表获得并且解析了一个正确的HTTP请求；
     * FORBIDDEN_REQUESTION是代表访问资源的权限有问题；
     * FILE_REQUESTION代表GET方法资源请求；INTERNAL_ERROR代表服务器自身问题；
     * NOT_FOUND代表请求的资源文件不存在；
     * DYNAMIC_FILE表示是一个动态请求；
     * POST_FILE表示获得一个以POST方式请求的HTTP请求*/
    enum HTTP_CODE{NO_REQUESTION, GET_REQUESTION,
            BAD_REQUESTION, FORBIDDEN_REQUESTION,
            FILE_REQUESTION,INTERNAL_ERROR,NOT_FOUND,
            DYNAMIC_FILE,POST_FILE};

    /*HTTP请求解析的状态转移。HEAD表示解析头部信息，REQUESTION表示解析请求行*/
    enum CHECK_STATUS{HEAD,REQUESTION};

    HttpContent();
    ~HttpContent();
    void doit(const TcpConnectionPtr &conn, Buffer &buf);
private:
    HttpRespond httprespond_;
    HTTP_CODE analyse(const TcpConnectionPtr& conn, Buffer &buffer);
    void set_status(CHECK_STATUS statu){
        status_ = statu;
    }

    void ParseHeader(Buffer &buffer);//解析请求头
    void ParseRequestion();//解析请求
    CHECK_STATUS Analyse_Status(){
        return status_;
    }
    std::string content;//需要解析的每一行
    HTTP_CODE RESULT_;//解析的结果
    CHECK_STATUS status_;
};

HttpContent::HttpContent(){

}

HttpContent::~HttpContent(){

}

void HttpContent::doit(const TcpConnectionPtr &conn, Buffer &buffer){
    RESULT_ = analyse(conn,buffer);
    switch (RESULT_){
        case BAD_REQUESTION:{
            //std::cout << "请求头格式有问题\n";
            break;
        }
        case FILE_REQUESTION:{
            httprespond_.FillRespond_GET(conn);
            //std::cout << "GET请求方法\n";
            break;
        }
        case POST_FILE:{
            //std::cout << "POST请求方法\n";
            std::string post;
            buffer.Buffer_str(post);
            std::string p;
           // std::cout<<"POST的内容: " << post << std::endl;
           // std::cout << "POST的长度: " << post.size()<<std::endl;
            httprespond_.FillRespond_POST(conn);
        }
    }

}

void HttpContent::ParseRequestion() {
    std::string type;
    int find = content.find(" ");
    type = content.substr(0,find);
    std::string type_content;
    if(type=="Host:"){
        type_content = content.substr(find+1, content.size()-3);
        std::cout << "type_content: " << type_content << std::endl;
        httprespond_.set_Host_(type_content);
    }
    else if(type=="Accept-Language:"){
        //Content-Language;
        type_content = content.substr(find+1, content.size()-3);
        std::cout << "Content-Language: " << type_content << std::endl;
        httprespond_.set_ContentLanguage(type_content);

    }
    else if(type=="Connection:"){
        type_content = content.substr(find+1, content.size()-3);
        std::cout << "Connection: " << type_content << std::endl;
        httprespond_.set_Connection(type_content);
    } else{
        std::cout << type << std::endl;
    }

}


void HttpContent::ParseHeader(Buffer &buffer) {
    int find_url = content.find(" ");
    std::string url;
    url = content.substr(0,find_url);
    if(url!="GET" && url!="POST"){
        RESULT_ = BAD_REQUESTION;
        return;
    }
    std::cout << "url: " << url << std::endl;
    httprespond_.set_url(url);

    std::string method;
    int find_method = content.find(" ",find_url+1);
    method = content.substr(find_url+1,find_method-find_url-1);
    httprespond_.set_method(method);

    std::string version;
    version = content.substr(find_method+1,content.size()-find_method-3);
    if(version!="HTTP/1.1"){
        RESULT_ = BAD_REQUESTION;
        return;
    }
    httprespond_.set_version(version);
    RESULT_ = (url=="GET"?FILE_REQUESTION:POST_FILE);

}
HttpContent::HTTP_CODE HttpContent::analyse(const TcpConnectionPtr &conn, Buffer &buffer) {
    //std::cout << "address of buffer: " << &buffer << std::endl;
    status_ = HEAD;
    bool flags = true;
    char *start = buffer.peek();
    char *ends = buffer.peek()+buffer.readable()-4;
    //std::cout << "查看接收到的头:\n";
    while (start!=ends){
        std::cout << *start;
        start++;
    }
    std::string judge_content;
    buffer.Buffer_str(judge_content);
    int find_post = judge_content.find("Content-Length: ");
    if(find_post!=judge_content.npos){
        int find=judge_content.find("\r\n\r\n");
        httprespond_.set_postcontent(judge_content.substr(find+4,judge_content.size()-find-4));
    }
    while (buffer.readable()>=2 && flags && buffer.Buffer_find_str("\r\n",content,2)){
        //std::cout<<"查看转化过来的字符串: " << content << std::endl;
        switch(status_){
            case HEAD:{
          //      std::cout << "解析请求行的头部\n";
                ParseHeader(buffer);
                set_status(REQUESTION);
                break;
            }
            case REQUESTION:{
            //    std::cout << "解析请求头字段信息\n";
                ParseRequestion();
                break;
            }
            default:{
              //  std::cout <<"错误输出\n";
                flags = false;
            }
        }
        content.clear();
    }
    return RESULT_;

}

#endif //UNTITLED_HTTPCONTENT_H
