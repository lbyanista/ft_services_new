openrc reboot
/etc/init.d/mariadb setup
service mariadb start
mysql -e "CREATE USER 'mlabrayj'@'%' IDENTIFIED BY 'password';"
mysql -e "CREATE DATABASE wordpress;"
mysql < ./wordpress.sql -u root wordpress; 
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mlabrayj'@'%';"
mysql -e "FLUSH PRIVILEGES"
mysql -e "./mlabrayj_db.sql -u mlabrayj"
service mariadb restart
/telegraf/telegraf &
sh
