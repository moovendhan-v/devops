#!/bin/bash

touch /var/photogram/hellowdocker
git clone https://git.selfmade.ninja/moovendhan/photogram-agri.git /var/www/html
sed -i "s/short_open_tag = .*/short_open_tag = On/" /etc/php/8.1/apache2/php.ini
/usr/sbin/apache2ctl -D FOREGROUND
