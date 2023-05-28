Kill Ddos L7 Script

小白不会的话，可以使用 install.sh 一键安装脚本
chmod 777 install.sh
./install.sh

简介：

群组：https://t.me/KillQun
本文介绍了一款基于HTTP/1.1协议和Socket连接的多线程并发测压脚本。该脚本利用Node.js编写，通过建立多个并发的Socket连接，发送HTTP请求来对目标服务器进行压力测试。脚本还计算了请求数量、每秒平均请求数量和QPS（每秒请求数）等指标，以评估目标服务器的性能。通过QPS的计算，可以推导出其他相关的性能指标和信息。

脚本使用说明：

bashCopy code

./main-kill <threads> <target> <duration> <http_file> <key>

参数说明：

<threads>：指定线程数，用于并发发送HTTP请求。
<target>：指定目标网址或IP地址，脚本将对该地址进行压力测试。
<duration>：指定测试持续时间，单位为秒。
<http_file>：指定包含HTTP请求的文件路径。
<key>：（可选）指定密钥，用于访问受限资源。
免责声明：

请注意，本脚本仅供学习和测试使用，严禁将其用于非法用途。使用者应对脚本使用造成的任何后果负责。

样本分析报告 安全检查：

文件名称：
检测地址：https://s.threatbook.com/
send SHA256： c03d9b3c4729eecc032d62230ca3b54dd82d8f41cd46c25b638fcbdcdbba01ff

文件大小：140.36 KB

文件类型：ASCII text, with very long lines, with no line terminators

分析环境： Linux(CentOS 7.0 64bit) Win10(1903

文件名称：main-kill

SHA256： 54358628ab92fdb2a1ec8771de7a1774becc7a524b9791c41265aba514749d4b

文件大小：1019 B

文件类型：Bourne-Again shell script, Unicode text, UTF-8 text executable

分析环境： Linux(Ubuntu 17.04 64bit

关于QPS：

QPS是每秒请求数的缩写，是衡量系统处理能力的重要指标。通过计算QPS，可以了解目标服务器在单位时间内能够处理的请求数量，从而评估其性能和负载情况。基于脚本提供的QPS信息，可以进一步推导出其他相关指标和信息。