docker build -t influxdb ./srcs/InfluxDB/image/
kubectl apply -f ./srcs/InfluxDB/influxdb.yaml