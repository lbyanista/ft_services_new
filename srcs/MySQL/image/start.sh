openrc reboot
/etc/init.d/mariadb setup
service mariadb start
mysql -e "CREATE USER 'mlabrayj'@'%' IDENTIFIED BY 'password';"
mysql -e "CREATE DATABASE wordpress;"
mysql < ./wordpress.sql -u root wordpress;
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mlabrayj'@'%';"
mysql -e "FLUSH PRIVILEGES"
mysql -e "CREATE DATABASE phpmyadmin;"
mysql  < ./phpmyadmin.sql -u root phpmyadmin;
service mariadb restart
/telegraf/telegraf &
tail -f /dev/null
