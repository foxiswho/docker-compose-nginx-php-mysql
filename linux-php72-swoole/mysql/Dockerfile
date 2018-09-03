FROM mysql:8.0

RUN rm -rf /etc/localtime \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#5.7
#RUN echo "sql_mode=STRICT_TRANS_TABLES" >> /etc/mysql/mysql.conf.d/mysqld.cnf
#8.0
#RUN echo "sql_mode=STRICT_TRANS_TABLES" >> /etc/mysql/mysql.conf.d/mysqld.cnf