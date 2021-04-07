docker build -t nginx ./srcs/nginx/image/
kubectl apply -f ./srcs/nginx/nginx.yaml
