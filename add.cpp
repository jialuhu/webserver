/*************************************************************************
	> File Name: add.c
	> Author: 
	> Mail: 
	> Created Time: 四  8/ 8 01:04:01 2019
 ************************************************************************/
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<string>
#include<iostream>
using namespace std;
int main(int argc, char *argv[])
{
    string s1(argv[0]);
    int a,b,result;
    int ret;;
    char ss[100];
    strcpy(ss,s1.c_str());
    ss[strlen(ss)]='\0';
    ret = sscanf(ss,"a=%d&b=%d", &a, &b);

    string head("HTTP/1.1 200 ok\r\nContent-type: text/html\r\nConnection: close\r\n");
    string Errno;
    string message;
    if(ret < 0 || ret != 2)
    {
        Errno = "<html><body>\r\n<p>failure</p>\r\n</body></html>";
        char buf[100]={0};
        sprintf(buf, "Content-Length: %d\r\n\r\n",(int)Errno.size());
        buf[strlen(buf)]='\0';
        head +=buf;
    }
    else{
        char buf[300]={0};
        sprintf(buf,"<html><body>\r\n<p>%d+%d=%d</p><br>\r\n</body></html>",a,b,a+b);
        buf[strlen(buf)]='\0';
        message = buf;
        char bufs[100]={0};
        sprintf(bufs, "Content-Length: %d\r\n\r\n",(int)message.size());
        buf[strlen(bufs)]='\0';
        head +=bufs;
    }
    printf("%s",head.c_str());
    printf("%s",message.c_str());
    return 0;
}


