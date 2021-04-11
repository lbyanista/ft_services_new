#starting minikube
export MINIKUBE_PLACE=~/goinfre/
echo 'delete minikube.'
minikube delete
echo 'start minikube .. 🔄'
minikube start --driver=virtualbox
eval $(minikube docker-env)
export MK4IP=192.168.99.250
echo 'minikube started ✅'


# #metallb
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
sed -i '' "s/MK4IP/$MK4IP/g" srcs/nginx/image/default.conf
./srcs/nginx/start.sh
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" srcs/nginx/image/default.conf
echo 'nginx installed & started 💪'


#php mysql
echo 'install mysql pma ..'
echo "change MK4IP to $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" ./srcs/MySQL/image/wordpress.sql
./srcs/MySQL/start.sh
./srcs/phpMyAdmin/start.sh
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" ./srcs/MySQL/image/wordpress.sql
echo 'mysql , pma installed 💪'

#Wordpress
echo 'install wordpress ..'
./srcs/WordPress/start.sh
echo 'WordPress installed 💪'

#install grafana
echo 'install grafana ...'
./srcs/Grafana/start.sh
echo 'grafana installed 💪'

#install influxdb
echo 'install InfluxDB ...'
./srcs/InfluxDB/start.sh
echo 'influxdb installed. 💪'

#FTPS
echo 'install ftps...'
echo "change MK4IP to $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" ./srcs/FTPS/image/vsftpd.conf
./srcs/FTPS/start.sh
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" ./srcs/FTPS/image/vsftpd.conf
echo 'FTPS installed. 💪'
