# TinyWebServer
* <a href="#1">一、背景 </a>
* <a href="#2">二、简介 </a>
* <a href="#3">三、使用概述 </a>
* <a href="#4">四、性能测试 </a>
* <a href="#5">五、泄漏检查 </a>
* <a href="#6">六、展示网址 </a>

## <a name="1">一、背景</a>
通过muduo的启发，再反思之前写过的[TinyWebServer1.0](https://blog.csdn.net/qq_36573828/article/details/82784425),决定重构一版稳定性较高的TinyWebServer。

## <a name="2">二、简介
TinyWebServer是一款支持静态网页、CGI文件、PDF文件、音频和视频传输的Web服务器。

## <a name="3">三、使用概述
### 3.1 功能概述
- 支持GET请求
- 支持POST请求
- 支持图片、语音、视频等大文件的传输

### 3.2 特点
- 控制了内存泄漏，使用了RAII思想对资源进行了管理。
- 处理速度快，采用了多线程异步I/O多路复用模式。
- 稳定性高，各类功能划分清晰。
- 文件发送快，利用读写缓冲区实现前后台分离模式异步发送。
- 配置简单。
- 使用简单。

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
运行前请安装cmake
```
mkdir build
cd build
cmake ..
make
./webserver
```
## <a name="4">四、性能测试
使用siege对webserver和Apache进行压力测试比较，测压命令统一如下:

```
siege -r 10000 -c 50 URL
//重复10000次，并发客户为50
```

### 4.1 性能测试结果
#### 4.1.1 webserver
![image](https://github.com/jialuhu/webserver/raw/master/doc/t.png)

#### 4.1.2 Apache
![image](https://github.com/jialuhu/webserver/raw/master/doc/a.png)

### 4.2 数据对比
#### 4.2.1 运行时间（越短越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Runtime.png)

#### 4.2.2 响应时间（越短越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Respond.png)

#### 4.2.3 事物处理速度（越快越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Transaction.png)

#### 4.2.4 吞吐量（越大越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Throughput.png)

#### 4.2.5 并发性（越大越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Current.png)

#### 4.2.6 数据传输量（越大越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Data.png)

#### 4.2.7 最长事物处理时间（越短越好）
![image](https://github.com/jialuhu/webserver/raw/master/doc/Longesttime.png)

## <a name="5">五、泄漏检查
![image](https://github.com/jialuhu/webserver/raw/master/doc/leaks.png)

若图片加载缓慢可参考如下数据:

```
Date/Time:       2020-02-23 14:37:16.128 +0800
Launch Time:     2020-02-21 16:14:35.852 +0800
OS Version:      Mac OS X 10.12.6 (16G2136)
Report Version:  7
Analysis Tool:   /Applications/Xcode.app/Contents/Developer/usr/bin/leaks
Analysis Tool Version:  Xcode 9.2 (9C40b)
----
leaks Report Version:  2.0
Process 14347: 171 nodes malloced for 89 KB
Process 14347: 0 leaks for 0 total leaked bytes.
```
从检测结果得出如下结论:
- 进程14347:171个节点分配了89 KB的内存
- 进程14347:0泄漏，总共泄漏0个字节。

## <a name="6">六、效果展示
若网页背景图显示不完整请刷新该页面。
[点击此处进行访问](http://jialuhu.mynatapp.cc/index.html)
### 效果展示截图
下图为主页面:
![image](https://github.com/jialuhu/webserver/raw/master/doc/result1.png)

下图为音乐页面:
![image](https://github.com/jialuhu/webserver/raw/master/doc/result2.png)

下图为加法表单页面:
![image](https://github.com/jialuhu/webserver/raw/master/doc/result3.png)


