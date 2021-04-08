docker build -t wordpress ./srcs/WordPress/image/
kubectl apply -f ./srcs/WordPress/wordpress.yaml
