FROM younginnovations/php-apache-supervisor-composer:latest  
MAINTAINER younginnovations server@yipl.com.np
ADD ./rc-country/ /var/www/html/rc-country/
WORKDIR /var/www/html/rc-country
#ADD .env /var/www/html/rc-country/.env
RUN composer install
RUN php artisan migrate
RUN php artisan db:seed
RUN chmod -R 777 /var/www/html/rc-country/storage/

