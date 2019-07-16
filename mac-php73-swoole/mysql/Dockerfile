FROM mariadb:10.3

RUN rm -rf /etc/localtime \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#RUN echo "sql_mode=STRICT_TRANS_TABLES" >> /etc/mysql/mysql.conf.d/mysqld.cnf
#8.0
#RUN echo "sql_mode=STRICT_TRANS_TABLES" >> /etc/mysql/conf.d/mysqld.cnf

#RUN ln -s /var/run/mysqld/mysqld.sock /tmp/mysql.sock