apk update
apk add nginx openssl openrc openssh
openrc reboot
mv default.conf /etc/nginx/conf.d/
adduser -D mlabrayj
echo 'mlabrayj:password' | chpasswd
openssl req -x509 -nodes -subj "/C=MA/ST=ST/L=BG/O=D/CN=mlabrayj.com"  -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt
rc-service nginx start
/telegraf/telegraf &
ssh-keygen /etc/ssh/ssh_host_rsa_key -N '' -t rsa
ssh-keygen /etc/ssh/ssh_host_dsa_key -N '' -t dsa
/etc/init.d/sshd start

sh
