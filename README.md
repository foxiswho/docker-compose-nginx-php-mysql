# docker-compose-nginx-php-mysql
docker-compose+nginx+php+mysql+redis+elasticsearch
#版本
##Mac系统
php:5.6.x
php:7.x

mysql:5.6.x
mysql:5.7.x

nginx:latest

elasticsearch:latest
#安装方式
1.选择要安装的系统和版本

例如：mac系统 php5.6.x版本,进入`mac-php56`目录
```
cd mac-php56
```
2.docker-compose.yml配置更改

选择你需要的功能，不需要的用#号注释掉

3.生成镜像

这个时候 一定不能更换目录。

`注意` 如果你以前已经配置过一样的容器那么会自动覆盖容器
```
docker-compose up
```
时间比较长， 更新源都在国外，最好早晨拉取
#nginx
配置文件位置：/etc/nginx/nginx.conf

来源：官方源 

#php
来源：官方源 
##php-fpm
配置文件及目录位置

/usr/local/etc/php-fpm.conf

/usr/local/etc/php-fpm.d/www.conf

/usr/local/etc/php-fpm.d  目录

##php.ini 默认加载目录位置
/usr/local/etc/php/conf.d/  目录

#redis
来源：官方源 

#elasticsearch
来源：官方源 

#使用教程-MAC系统
新建目录
```
/Volumes/work/lanmps/vhost/
```
work：分区名称

lanmps:自定义目录

vhost：nginx 站点配置文件

复制 `nginx/default.conf` 到 `/Volumes/work/lanmps/vhost/` 目录下

##1.mac硬盘设置
mac 系统默认硬盘 不区分大小写，

如果需要区分请 按 [http://blog.csdn.net/fenglailea/article/details/53083785](http://blog.csdn.net/fenglailea/article/details/53083785) 此链接中教程 重新分区。

`建议分区，我这里是分区的`

##2.nginx 配置
进入nginx容器
```
docker exec -it compose_nginx_1 bash
```
`compose_nginx_1` 容器名字可能不一样
配置nginx.conf
```
vim /etc/nginx/nginx.conf
```
找到如下配置
```
include /etc/nginx/conf.d/*.conf;
```
修改为：（根据你自己分区名称置修改）
```
include /Volumes/work/lanmps/vhost/*.conf; 
```
保存和退出容器

##3.php 配置
略 

跟nginx类似

##5.测试
在 `/Volumes/work/lanmps/` 目录下
新建 index.php
```
<?php
phpinfo();
```

##X.问题
X.1 权限问题
设置 可读写执行权限
```
chmod -R 777 /Volumes/work/lanmps
```
#更改下载镜像名称
下载镜像和容器前缀名称是根据当前项目目录名设置的。
例如当前项目目录为`mac-php56`，那么镜像和容器的前缀名为 `macphp56`