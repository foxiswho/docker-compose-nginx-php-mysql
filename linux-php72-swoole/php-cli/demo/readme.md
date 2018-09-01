案例使用

```SHELL
//直接使用原始镜像
docker run  -ti -p 9501:9501 -v `pwd`:/demo/ -d foxiswho/php-alpine:php71 php /demo/demo.php
或
//使用编译后镜像
docker run  -ti -p 9501:9501 -v `pwd`:/demo/ -d mac-php71-swoole_phpcli:latest php /demo/demo.php
```
curl 访问
```SHELL
curl http://127.0.0.1:9501
```
输出
```SHEL
Hello World
{"hello":"nihao1527412114"}
```