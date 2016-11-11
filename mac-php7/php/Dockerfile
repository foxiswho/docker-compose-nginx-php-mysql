FROM  tetraweb/php:7.0

RUN rm -rf /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD ["php", "-a"]