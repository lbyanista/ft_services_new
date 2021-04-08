docker build -t mysql ./srcs/MySQL/image/
kubectl apply -f ./srcs/MySQL/mysql.yaml
