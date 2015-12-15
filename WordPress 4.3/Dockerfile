FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install WordPress Pre-requisites
RUN \
#yum clean all && \
#yum -y update && \
yum -y install httpd mod_rewrite mod_ssl mod_env php php-common php-cli php-mysql unzip && \
rm -fr /var/cache/*

# Wordpress Install
RUN \
wget -P /var/www/html/ https://wordpress.org/wordpress-4.3.zip && \
unzip /var/www/html/wordpress-4.3.zip -d /var/www/html/ && \
rm -fr /var/www/html/wordpress-4.3.zip && \
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

RUN \
echo "service httpd start" >> ~/.bashrc

EXPOSE 80
