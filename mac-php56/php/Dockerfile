FROM  tetraweb/php:5.6-fpm

#ADD .bashrc /root/.bashrc

RUN rm -rf /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& phpModules=" \
            bcmath bz2 calendar dba enchant exif gd gettext gmp imap intl ldap mcrypt mssql mysql mysqli opcache pcntl pdo_dblib pdo_mysql pdo_pgsql pgsql pspell shmop snmp soap sockets sysvmsg sysvsem sysvshm tidy wddx xmlrpc xsl zip xdebug  redis \
        " \
&& docker-php-ext-enable $phpModules \
&& apt-get update && apt-get install --no-install-recommends -y \
  vim \
  wget \
&& echo "alias ls='ls -lhG --color=auto'" >> /root/.bashrc \
&& echo "alias ll='ls -lhG --color=auto'" >> /root/.bashrc \
&& echo "post_max_size = 50M" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "upload_max_filesize = 50M" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "date.timezone = PRC" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "short_open_tag = On" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "cgi.fix_pathinfo=0" >> /usr/local/etc/php/conf.d/php.ini \
&& echo "max_execution_time = 300" >> /usr/local/etc/php/conf.d/php.ini \
&& echo ";register_long_arrays = On" >> /usr/local/etc/php/conf.d/php.ini \
&& echo ";magic_quotes_gpc = On" >> /usr/local/etc/php/conf.d/php.ini



#&& source /root/.bashrc \