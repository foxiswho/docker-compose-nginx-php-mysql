#!/bin/bash

#用于手动操作
# echo "alias ls='ls -lhG --color=auto'" >> /root/.bashrc \
# && echo "alias ll='ls -lhG --color=auto'" >> /root/.bashrc \
# && source /root/.bashrc \

echo "开启所有扩展"

sed -i 's:;request_terminate_timeout = 0:request_terminate_timeout = 100:g' /usr/local/etc/php-fpm.d/www.conf
sed -i 's:;request_terminate_timeout = 0:request_terminate_timeout = 100:g' /usr/local/etc/php-fpm.d/www.conf
docker-php-ext-enable bcmath bz2 calendar dba enchant exif gd gettext gmp imap intl ldap mcrypt mysqli opcache pcntl pdo_dblib pdo_mysql pdo_pgsql pgsql pspell shmop snmp soap sockets sysvmsg sysvsem sysvshm tidy wddx xmlrpc xsl zip xdebug redis