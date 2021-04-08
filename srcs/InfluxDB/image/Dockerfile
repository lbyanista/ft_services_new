FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add openrc influxdb
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_static_linux_amd64.tar.gz
RUN tar xf telegraf-1.18.1_static_linux_amd64.tar.gz
RUN rm telegraf-1.18.1_static_linux_amd64.tar.gz
RUN chmod +x telegraf*/
COPY start.sh ./
COPY lifserv.sh ./
RUN chmod +x start.sh
CMD ./start.sh