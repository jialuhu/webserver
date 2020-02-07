# TinyWebServer
* <a href="#1">一、背景 </a>
* <a href="#2">二、简介 </a>
* <a href="#3">三、使用概述 </a>
* <a href="#4">四、性能测试 </a>


## <a name="1">一、背景</a>
通过muduo的启发，再反思之前写过的[TinyWebServer1.0](https://blog.csdn.net/qq_36573828/article/details/82784425),决定重构一版低泄漏、稳定性较高的TinyWebServer。

## <a name="2">二、简介
TinyWebServer是一款支持静态网页、CGI文件、PDF文件、音频和视频传输的简易小型Web服务器。适用于学习或了解。

## <a name="3">三、使用概述
### 3.1 功能概述
- 支持GET请求，即静态网页
- 支持POST请求，即CGI文件执行
- 支持PDF文件传输
- 支持图片、语音、视频等大文件的传输

### 3.2 技术概述
- 使用kqueue多路复用技术
- 使用了RAII封装，降低内存泄漏风险
- 使用来Reactor模型进行事件的分发和管理
- 使用了Oneloop per thread模型
- 使用多线程
- 使用来Round Robin分配线程
- 各类分工明确功能专一

### 3.3 使用说明
#### 3.3.1 配置文件
配置文件为httped.conf，其中配置格式如下：
```
ServerRoot: /etc/TinyWeb/WWW
```
字段说明如下：

```
ServerRoot: //服务器的根目录
Listen://监听端口号
DocumentPath: //静态网页文件放置绝对目录
CGIPath: //CGI执行文件放置绝对目录
CGI: //是否开启CGI功能，默认值是不开启
ADDR://设置站点ip地址,默认为回环地址
ThreadNumber://大于0默认开启多线程服务，等于0启动单线程服务
``` 
默认配置例子：

```
ServerRoot: /etc/TinyHtp/WWW
Listen: 8888
DocumentPath: /etc/TinyHtp/WWW/Documents
CGIPath: /etc/TinyHtp/WWW/CGI
CGI: NO
ADDR: 127.0.0.1
ThreadNumber: 0
```
#### 3.3.2运行环境

```
MacOS 10.12.6
```

#### 3.3.3下载安装说明
请同配置文件下载在同一个目录下。

```
git https://github.com/jialuhu/webserver.git
```

```
cd cmake-build-debug
make
./webserver
```
## <a name="4">四、性能测试
使用siege进行压力测试，结果如下:
### 4.1 TinyWebServer
![image](https://github.com/jialuhu/webserver/doc/blob/master/TinyWeb.png)
![image](https://github.com/jialuhu/webserver/doc/blob/master/TinyWeb_50000_2.png)

### 4.2 Apache
![image](https://github.com/jialuhu/webserver/doc/blob/master/Apache.png)
![image](https://github.com/jialuhu/webserver/doc/blob/master/apache_50000_2.png)


