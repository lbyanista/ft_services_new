openrc reboot
service influxdb start
chmod 777 /var/lib/influxdb/
/telegraf/telegraf &
sh