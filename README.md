# docker-compose-nginx-php-mysql
docker-compose+nginx+php+mysql+redis+elasticsearch
#版本
php:5.6.x

mysql:5.6.x

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