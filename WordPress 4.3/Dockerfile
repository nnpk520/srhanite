FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

#ENV WORDPRESS_DATABASE_NAME wordpress
#ENV WORDPRESS_USERNAME wpuser
#ENV WORDPRESS_PASSWORD Pass@word1

# Install WordPress Pre-requisites
RUN \
yum clean all && \
yum -y update && \
yum -y install httpd mod_rewrite mod_ssl mod_env php php-common php-cli php-mysql libpng12-dev libjpe-dev && \
rm -fr /var/cache/*

# set recommended PHP.ini settings
# see https://secure.php.net/manual/en/opcache.installation.php
RUN { \
		echo 'opcache.memory_consumption=128'; \
		echo 'opcache.interned_strings_buffer=8'; \
		echo 'opcache.max_accelerated_files=4000'; \
		echo 'opcache.revalidate_freq=60'; \
		echo 'opcache.fast_shutdown=1'; \
		echo 'opcache.enable_cli=1'; \
	} > /usr/local/etc/php/conf.d/opcache-recommended.ini

VOLUME /var/www/html

# Copy Files To Image
#ADD wordpress.conf /etc/httpd/conf.d/

# Install and Configure WordPress
RUN \
wget -P /var/www/html/ https://wordpress.org/wordpress-4.3.zip && \
unzip /var/www/html/wordpress-4.3.zip -d /var/www/html/ && \
rm -fr /var/www/html/wordpress-4.3.zip && \
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
#sed -ie 's/database_name_here/wordpress/g' /var/www/html/wordpress/wp-config.php && \
#sed -ie 's/username_here/wpuser/g' /var/www/html/wordpress/wp-config.php && \
#sed -ie 's/password_here/Pass@word1/g' /var/www/html/wordpress/wp-config.php
#sed -ie 's/database_name_here/$WORDPRESS_DATABASE_NAME/g' /var/www/html/wordpress/wp-config.php && \
#sed -ie 's/username_here/$WORDPRESS_USERNAME/g' /var/www/html/wordpress/wp-config.php && \
#sed -ie 's/password_here/$WORDPRESS_PASSWORD/g' /var/www/html/wordpress/wp-config.php

# Start WordPress on boot
#RUN \
#echo "service httpd start" >> ~/.bashrc

EXPOSE 80
