#starting minikube
export MINIKUBE_PLACE=~/goinfre/
echo 'delete minikube.'
minikube delete
echo 'start minikube .. 🔄'
minikube start --driver=virtualbox
eval $(minikube docker-env)
export MK4IP=192.168.99.250
echo "======= $MK4IP ======="
echo 'minikube started ✅'

#metallb
echo 'install metallb ...'
echo "change MK4IP to $MK4IP on config.yaml"
sed -i '' "s/MK4IP/$MK4IP/g" srcs/metallb/config.yaml
./srcs/metallb/install.sh
echo "change $MK4IP to MK4IP on config.yaml"
sed -i '' "s/$MK4IP/MK4IP/g" srcs/metallb/config.yaml
echo 'metallb istalled. 💪'

#nginx
echo 'install nginx ..🕸️'
echo "change MK4IP to $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" srcs/nginx/default.conf
docker build -t nginx ./srcs/nginx/
kubectl apply -f ./srcs/nginx/nginx.yaml
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" srcs/nginx/default.conf
echo 'nginx installed & started 💪'

#php mysql
echo 'install mysql ...'
echo "change MK4IP to $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" ./srcs/MySQL/wordpress.sql
docker build -t mysql ./srcs/MySQL/
kubectl apply -f ./srcs/MySQL/mysql.yaml
echo 'install phpmyadmin ...'
docker build -t phpmyadmin ./srcs/phpMyAdmin/
kubectl apply -f ./srcs/phpMyAdmin/phpmyadmin.yaml
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" ./srcs/MySQL/wordpress.sql
echo 'mysql , pma installed 💪'

#Wordpress
echo 'install wordpress ..'
docker build -t wordpress ./srcs/WordPress/
kubectl apply -f ./srcs/WordPress/wordpress.yaml
echo 'WordPress installed 💪'

#install grafana
echo 'install grafana ...'
docker build -t grafana ./srcs/Grafana/
kubectl apply -f ./srcs/Grafana/grafana.yaml
echo 'grafana installed 💪'

#install influxdb
echo 'install Influxdb ...'
docker build -t influxdb ./srcs/InfluxDB/
kubectl apply -f ./srcs/InfluxDB/influxdb.yaml
echo 'influxdb installed. 💪'

#FTPS
echo 'install ftps...'
echo "change MK4IP to $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" ./srcs/FTPS/vsftpd.conf
docker build -t ftps ./srcs/FTPS/
kubectl apply -f ./srcs/FTPS/ftps.yaml
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" ./srcs/FTPS/vsftpd.conf
echo 'FTPS installed. 💪'

#start dashboard
echo 'Start Minikube Dashboard'
minikube dashboard &
