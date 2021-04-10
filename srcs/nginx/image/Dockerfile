FROM alpine:3.12

COPY start.sh /
RUN mkdir www/
COPY default.conf /
COPY index.html /www
RUN chmod +x start.sh
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.14.0-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.14.0-static_linux_amd64.tar.gz
RUN rm telegraf-1.14.0-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY lifserv.sh /
CMD ./start.sh
