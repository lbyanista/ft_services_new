#starting minikube
echo 'start minikube .. 🔄'
export MINIKUBE_PLACE=~/goinfre/
minikube start --driver=virtualbox
eval $(minikube docker-env)
export MK4IP=$(minikube ip)
echo 'minikube started ✅'


#metallb
echo 'install metallb ...'
echo "change MK4IP to $MK4IP on config.yaml"
sed -i '' "s/MK4IP/$MK4IP/g" srcs/requierments/config.yaml
./srcs/requierments/install.sh
echo "change $MK4IP to MK4IP on config.yaml"
sed -i '' "s/$MK4IP/MK4IP/g" srcs/requierments/config.yaml
echo 'metallb istalled.'

#nginx
echo 'install nginx ..🕸️'
echo "change MK4IP to $MK4IP"
sed -i '' "s/MK4IP/$MK4IP/g" srcs/nginx/image/default.conf
./srcs/nginx/start.sh
echo "change $MK4IP to MK4IP"
sed -i '' "s/$MK4IP/MK4IP/g" srcs/nginx/image/default.conf
echo 'nginx started 💪'

#Wordpress
echo 'install wordpress ..'
./srcs/WordPress/start.sh
echo 'WordPress installed 💪'

