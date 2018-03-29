FROM foxiswho/php:php71-fpm

COPY php-ext-ssh2.sh /root/php-ext-ssh2.sh
RUN ln -s /root/php-ext-ssh2.sh /php-ext-ssh2.sh && chmod +x /root/php-ext-ssh2.sh
RUN /root/start.sh