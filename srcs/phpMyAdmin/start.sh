docker build -t phpmyadmin ./srcs/phpMyAdmin/image/
kubectl apply -f ./srcs/phpMyAdmin/phpmyadmin.yaml
