FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install WordPress Pre-requisites
RUN \
#yum clean all && \
#yum -y update && \
yum -y install httpd mod_rewrite mod_ssl mod_env php php-common php-cli php-mysql unzip libpng12-dev libjpe-dev && \
rm -fr /var/cache/*

# Copy Files To Image
ADD wordpress.conf /etc/httpd/conf.d/

# Wordpress Install
RUN \
wget -P /var/www/html/ https://wordpress.org/wordpress-4.3.zip && \
unzip /var/www/html/wordpress-4.3.zip -d /var/www/html/ && \
rm -fr /var/www/html/wordpress-4.3.zip && \
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

# Wordpress Configuration
RUN \
sed -ie 's/database_name_here/wordpress/g' /var/www/html/wordpress/wp-config.php && \
sed -ie 's/username_here/wpuser/g' /var/www/html/wordpress/wp-config.php && \
sed -ie 's/password_here/Pass@word1/g' /var/www/html/wordpress/wp-config.php

RUN \
echo "service httpd start" >> ~/.bashrc

EXPOSE 80
