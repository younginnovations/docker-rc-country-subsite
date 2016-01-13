#!/bin/bash
echo -e "please enter the web server you are using on host system\nEnter 1 for apache\nEnter 2 for httpd\nEnter 3 for nginx"
read f1
if [ $f1 -eq 1 ]
then 
sudo service apache2 stop 
error_status_apache=$?
if [ $error_status_apache -ne 0 ]
then 
echo "The server you are using in the host is not apache.please choose the correct web server"
break
fi 
elif [ $f1 -eq 2 ]
then
sudo service httpd stop
error_status_httpd=$?
if [ $error_status_httpd -ne 0 ]
then 
echo "The server you are using in the host is not httpd.please choose the correct web server"
break
fi 
else 
sudo service nginx stop
error_status_nginx=$?
if [ $error_status_nginx -ne 0 ]
then 
echo "The server you are using in the host is not nginx.please choose the correct web server"
break
fi 
fi

