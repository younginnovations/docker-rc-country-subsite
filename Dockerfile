FROM younginnovations/alpine-nginx-phpfpm:latest
MAINTAINER younginnovations  <server@yipl.com.np>
RUN apk --update add php-pgsql git php-pdo_pgsql php-phar php-dom curl && rm /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN apk update
RUN apk add  php-curl 
COPY . /var/www/
RUN chmod -R 777 /var/www/rc-country/rc-country/storage 
WORKDIR /var/www/rc-country/
RUN composer install --no-interaction --prefer-source 

