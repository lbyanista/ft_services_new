apk update && apk upgrade
openrc reboot
rc-service php-fpm7 start
rc-service nginx start
#chmod +x /etc/telegraf
/telegraf/usr/bin/telegraf &
sh
