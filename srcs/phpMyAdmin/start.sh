openrc reboot
service php-fpm7 start
service nginx start
/telegraf/telegraf &
tail -f /dev/null
