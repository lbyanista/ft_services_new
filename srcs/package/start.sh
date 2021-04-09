docker build -t grafana ./srcs/Grafana/image/
kubectl apply -f ./srcs/Grafana/grafana.yaml
