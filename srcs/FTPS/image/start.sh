openrc reboot
openssl req -x509 -nodes -subj "/C=MA/ST=ST/L=BG/O=D/CN=mlabrayj.com"  -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt
adduser -D mlabrayj
echo 'mlabrayj:password' | chpasswd
touch /home/mlabrayj/my-test.txt
service vsftpd start
/telegraf/telegraf &
sh
