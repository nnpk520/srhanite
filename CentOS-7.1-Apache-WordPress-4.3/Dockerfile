FROM simonhutson/centos-7.1.1503-apache
MAINTAINER Simon Hutson

# Install WordPress Pre-requisites
RUN \
yum -y install php php-common php-cli php-mysql php-gd libpng12-dev libjpeg-dev unzip curl wget tar && \
rm -fr /var/cache/*

VOLUME /var/www/html

# Install and Configure WordPress
#RUN \
#wget -P /var/www/html/ https://wordpress.org/wordpress-4.3.zip && \
#unzip /var/www/html/wordpress-4.3.zip -d /var/www/html/ && \
#rm -fr /var/www/html/wordpress-4.3.zip && \
#cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

# https://wordpress.org/download/release-archive/
ENV WORDPRESS_VERSION 4.3
ENV WORDPRESS_SHA1 1e9046b584d4eaebac9e1f7292ca7003bfc8ffd7

# upstream tarballs include ./wordpress/ so this gives us /usr/src/wordpress
RUN \
curl -o wordpress.tar.gz -SL https://wordpress.org/wordpress-${WORDPRESS_VERSION}.tar.gz && \
echo "$WORDPRESS_SHA1 *wordpress.tar.gz" | sha1sum -c
RUN tar -xzf wordpress.tar.gz -C /var/www/
RUN rm wordpress.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress
	
COPY docker-entrypoint.sh /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
