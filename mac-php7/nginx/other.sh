#/bin/bash

#用于手动操作

echo "alias ls='ls -lhG --color=auto'" >> /root/.bashrc \
&& echo "alias ll='ls -lhG --color=auto'" >> /root/.bashrc \
&& . /root/.bashrc \
&& sed '1i\fastcgi_param  SCRIPT_FILENAME    \$document_root\$fastcgi_script_name;' /etc/nginx/fastcgi_params > /etc/nginx/fastcgi



#&& sed 's:include /etc/nginx/conf:#include /etc/nginx/conf:g;' /etc/nginx/include /etc/nginx/conf \
#&& sed "s:conf;:conf;\ninclude /Volumes/work/vhost/\*.conf;" /etc/nginx/include /etc/nginx/conf