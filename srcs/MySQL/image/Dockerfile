FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add openrc mariadb mariadb-common mariadb-client
RUN rc-update
RUN rm /etc/my.cnf.d/mariadb-server.cnf
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY wordpress.sql ./
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_static_linux_amd64.tar.gz
RUN tar xf telegraf-1.18.1_static_linux_amd64.tar.gz
RUN rm telegraf-1.18.1_static_linux_amd64.tar.gz
RUN chmod +x telegraf*/
COPY lifserv.sh ./
COPY start.sh ./
RUN chmod +x start.sh
CMD ./start.sh
