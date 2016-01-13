#!/bin/bash
pip install supervisor
cp /var/www/html/conf/supervisord.conf /etc/supervisord.conf
cp /var/www/html/supervisord.sh /etc/init.d/supervisord
chmod 766 /etc/init.d/supervisord


