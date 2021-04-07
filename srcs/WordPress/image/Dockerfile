FROM alpine:3.12
RUN apk add php7-common php7-iconv php7-json php7-gd  php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo \
&& apk add  php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7 php7-fpm \
&& apk add php7-zlib php7-dom php7-session php7-mbstring vim nginx openrc
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -zxvf latest.tar.gz
RUN rm latest.tar.gz
#COPY wp-config.php /wordpress/
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.0_static_linux_amd64.tar.gz
RUN tar xf telegraf-1.18.0_static_linux_amd64.tar.gz
RUN rm telegraf-1.18.0_static_linux_amd64.tar.gz
RUN mv telegraf*/ telegraf
#RUN mv telegraf/* /etc/telegraf/
#COPY telegraf.conf /
#RUN mv telegraf.conf /etc/telegraf/
RUN chmod +x telegraf/*
COPY start.sh ./
COPY lifserv.sh ./
RUN chmod +x start.sh
CMD ./start.sh
