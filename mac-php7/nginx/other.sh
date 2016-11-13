#/bin/bash

#用于手动操作


#sed '1i\fastcgi_param  SCRIPT_FILENAME    \$document_root\$fastcgi_script_name;' /etc/nginx/fastcgi_params > /etc/nginx/fastcgi

sed -i 's:include /etc/nginx/conf:#include /etc/nginx/conf:g;' /etc/nginx/nginx.conf \
&& sed -i "s:conf;:conf;\n    include /Volumes/work/vhost/\*.conf;:g" /etc/nginx/nginx.conf