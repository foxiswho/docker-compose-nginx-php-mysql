FROM nginx:latest

#ADD .bashrc /root/.bashrc
RUN rm -rf /etc/localtime \
    && ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& apt-get update \
&& apt-get install --no-install-recommends --no-install-suggests -y \
vim \
wget \
&& echo "alias ls='ls -lhG --color=auto'" >> /root/.bashrc \
&& echo "alias ll='ls -lhG --color=auto'" >> /root/.bashrc \
&& source /root/.bashrc \
&& sed '1i\fastcgi_param  SCRIPT_FILENAME    \$document_root\$fastcgi_script_name;' /etc/nginx/fastcgi_params > /etc/nginx/fastcgi
