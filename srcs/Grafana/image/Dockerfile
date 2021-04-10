FROM alpine:3.12
RUN apk update && apk upgrade
RUN apk add libc6-compat
RUN wget wget https://dl.grafana.com/oss/release/grafana-7.5.3.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.5.3.linux-amd64.tar.gz
RUN mv grafana-7.5.3 grafana
COPY grafana.db ./grafana/data/
RUN mkdir /etc/telegraf
COPY telegraf.conf /etc/telegraf/
RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.14.0-static_linux_amd64.tar.gz
RUN tar xf telegraf-1.14.0-static_linux_amd64.tar.gz
RUN rm telegraf-1.14.0-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
COPY lifserv.sh ./
COPY ./start.sh ./
RUN chmod +x start.sh
CMD ./start.sh
