#!/bin/bash
if [ ! -e .env ]; then echo ".env file does not exist. Please copy the .env file here and run buildall.sh again";exit 1 ; fi
sh check_web_server.sh
git clone git@gitlab.yipl.com.np:web-apps/rc-country.git rc-country
mv .env rc-country/
echo "please enter the primary color in hexadecimal form"
read f1
if [ "$f1" != "" ] 
then 
sed -i "s/#17A9A8/$f1/g" rc-country/public/css/color-country-view.css
fi
echo "please enter the secondary color in hexadecimal form"
read f2
if [ "$f1" != "" ]
then 
sed -i "s/#0B9C9B/$f2/g" rc-country/public/css/color-country-view.css
fi
hasid=`docker ps -a | grep -i alpinebasedimage_front_1| awk '{print $1}'`
if [ $hasid ]; then docker rm -f alpinebasedimage_front_1; fi                                    
docker-compose up

