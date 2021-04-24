FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add vsftpd openssl openrc
RUN rm /etc/vsftpd/vsftpd.conf
COPY vsftpd.conf /etc/vsftpd/
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.14.0-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.14.0-static_linux_amd64.tar.gz
RUN rm telegraf-1.14.0-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY start.sh ./
RUN chmod +x start.sh
COPY lifserv.sh ./
EXPOSE 21 30020-30021
CMD ./start.sh
