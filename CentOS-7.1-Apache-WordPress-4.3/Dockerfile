FROM simonhutson/centos-7.1.1503-apache
MAINTAINER Simon Hutson

# Install WordPress Pre-requisites
RUN \
yum -y install php php-common php-cli php-mysql php-gd libpng12-dev libjpeg-dev unzip curl wget tar && \
rm -fr /var/cache/*

VOLUME /var/www/html

# https://wordpress.org/download/release-archive/
ENV WORDPRESS_VERSION 4.3
ENV WORDPRESS_SHA1 3129156cc3fe245be77b15970a636be2e5bebcc1

# Install and Configure WordPress
RUN \
wget https://wordpress.org/wordpress-${WORDPRESS_VERSION}.zip && \
echo "$WORDPRESS_SHA1 *wordpress-${WORDPRESS_VERSION}.zip" | sha1sum -c && \
unzip wordpress-${WORDPRESS_VERSION}.zip -d /var/www/html/ && \
rm -fr wordpress-${WORDPRESS_VERSION}.zip && \
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

COPY docker-entrypoint.sh /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
