FROM foxiswho/php:php7-fpm

RUN rm -rf /etc/localtime \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
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