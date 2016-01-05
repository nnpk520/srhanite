FROM simonhutsonsrh-anite-centos-7.1.1503-apache
MAINTAINER Simon Hutson

# Install WordPress Pre-requisites
RUN \
yum -y install php php-common php-cli php-mysql libpng12-dev libjpeg-dev unzip && \
rm -fr /var/cache/*

# Install and Configure WordPress
RUN \
wget -P /var/www/html/ https://wordpress.org/wordpress-4.3.zip && \
unzip /var/www/html/wordpress-4.3.zip -d /var/www/html/ && \
rm -fr /var/www/html/wordpress-4.3.zip && \
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

VOLUME /var/www/html

EXPOSE 80
