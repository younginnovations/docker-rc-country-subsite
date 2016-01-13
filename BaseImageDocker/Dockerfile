FROM ubuntu:14.04
MAINTAINER younginnovations server@yipl.com.np
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install python2.7 -y
RUN apt-get install python-pip -y
ADD container-start-on-restart-of-system.conf /etc/init/
ADD setup-all.sh /var/www/html/
ADD /conf/supervisord.conf /var/www/html/conf/
ADD setup-supervisor.sh /var/www/html/
ADD supervisord.sh /var/www/html/
RUN /bin/bash /var/www/html/setup-supervisor.sh
RUN apt-get install -y  apache2 apache2-dev
RUN apt-get upgrade openssl
RUN apt-get install nano vim curl wget -y
RUN apt-get install git -y
RUN apt-get install -y libapache2-mod-php5
RUN apt-get install -y  \
    libxml2-dev \
    libcurl4-openssl-dev \
    libjpeg-dev \
    libpng-dev \
    libxpm-dev \
    libmysqlclient-dev \
    libpq-dev \
    libicu-dev \
    libfreetype6-dev \
    libldap2-dev \
    libxslt-dev
ENV PHP_VERSION 5.6.11
RUN apt-get install build-essential
RUN apt-get install -y wget
RUN wget "http://in1.php.net/get/php-5.6.11.tar.bz2/from/this/mirror" -O /root/php-5.6.11.tar.bz2
RUN apt-get install postgresql postgresql-contrib -y
WORKDIR /root
RUN pwd
RUN bunzip2 php-5.6.11.tar.bz2
RUN tar -xf php-5.6.11.tar
WORKDIR php-5.6.11
RUN ./configure \
  --prefix=/usr/local/php \
  --with-apxs2=/usr/bin/apxs \
  --enable-mbstring \
  --with-curl \
  --with-openssl \
  --with-xmlrpc \
  --enable-soap \
  --enable-zip \
  --with-gd \
  --with-jpeg-dir \
  --with-png-dir \
  --with-mysql \
  --with-pgsql \
  --enable-embedded-mysqli \
  --with-freetype-dir \
  --enable-intl \
  --with-pdo-pgsql \
  --with-xsl
RUN make
RUN make install
RUN cp php.ini-production /usr/local/lib/php.ini
RUN ln -s /usr/local/lib/php.ini /etc
RUN echo "LoadModule php5_module  modules/libphp5.so" >> /etc/apache2/apache2.conf
RUN echo "AddType application/x-http-php .php" >> /etc/apache2/apache2.conf
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN apt-get install php5-curl
WORKDIR /var/www/html/
ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
RUN a2enmod rewrite
WORKDIR /var/www/html
EXPOSE 80 8000
CMD ["/usr/local/bin/supervisord","-n"]


