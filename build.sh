#!/bin/bash
if [ ! -e .env ]; then echo ".env file does not exist. Please copy the .env file here and run buildall.sh again";exit 1 ; fi
git clone git@gitlab.yipl.com.np:web-apps/rc-country.git rc-country
mv .env rc-country/
docker-compose up 

