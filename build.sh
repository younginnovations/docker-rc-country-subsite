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
docker build -t rc-country:sierraleone .
hasid=`docker ps -a|grep -i rc-country-sierraleone|awk '{print $1}'`
if [ $hasid ]; then docker rm -f rc-country-sierraleone; fi                                    
docker run -it --name rc-country-sierraleone -p 80:80 rc-country:sierraleone
