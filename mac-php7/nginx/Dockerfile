FROM nginx:latest

RUN rm -rf /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& apt-get update \
&& apt-get install -y  vim  wget \
&& echo "alias ls='ls -lhG --color=auto'" >> /root/.bashrc \
&& echo "alias ll='ls -lhG --color=auto'" >> /root/.bashrc \
&& . /root/.bashrc