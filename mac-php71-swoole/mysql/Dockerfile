FROM mysql:5.7

RUN rm -rf /etc/localtime \
&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


#RUN echo "sql_mode=STRICT_TRANS_TABLES" >> /etc/mysql/mysql.conf.d/mysqld.cnf