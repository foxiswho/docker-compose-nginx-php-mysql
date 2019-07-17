#!/bin/bash

DIR=$(cd $(dirname $0); pwd)

cd ${DIR}

# 宿主机执行 当前文件

mkdir -p /Volumes/work/php
mkdir -p /Volumes/work/logs
mkdir -p ${DIR}/mysql/data
mkdir -p ${DIR}/elasticsearch/data
mkdir -p ${DIR}/elasticsearch/logs
mkdir -p ${DIR}/logstash/data
mkdir -p ${DIR}/logstash/pipeline/tmp


chmod -R 777 ${DIR}/mysql/data
chmod -R 777 ${DIR}/elasticsearch/data
chmod -R 777 ${DIR}/elasticsearch/logs
chmod -R 777 ${DIR}/logstash/data
chmod -R 777 ${DIR}/logstash/logs
chmod -R 777 ${DIR}/logstash/pipeline


docker-compose up


