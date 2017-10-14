#!/usr/bin/env bash

apt-get install libssl-dev

mkdir /root/tmp
cd /root/tmp
echo "https://www.libssh2.org/download/libssh2-1.8.0.tar.gz"
curl -LO https://www.libssh2.org/download/libssh2-1.8.0.tar.gz
tar -zxvf libssh2-1.8.0.tar.gz
cd libssh2-1.8.0
./configure --prefix=/usr/local/libssh2
make && make install


echo "下载 http://pecl.php.net/get/ssh2-1.1.2.tgz"
echo "如果无法下载，请自行用代理下载并安装"
cd /root/tmp
curl -LO http://pecl.php.net/get/ssh2-1.1.2.tgz
tar zxvf ssh2-1.1.2.tgz
cd ssh2-1.1.2
/usr/local/bin/phpize
./configure --with-ssh2=/usr/local/libssh2 --with-php-config=/usr/local/bin/php-config
make && make install
echo "/usr/local/etc/php/conf.d/docker-php-ext-ssh2.ini"
echo 'extension=ssh2.so' > /usr/local/etc/php/conf.d/docker-php-ext-ssh2.ini