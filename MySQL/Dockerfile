FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install MySQL Pre-requisites
RUN \
yum -y install libaio perl pwgen libpwquality php-mysql mysql-server && \
rm -fr /var/cache/*

# Copy Files To Image
ADD mysql_setup.sql /tmp/

# Install and Configure MySQL
RUN service mysqld start
RUN mysql < /tmp/mysql_setup.sql
RUN service mysqld stop
RUN rm -fr /tmp/mysql_setup.sql*

# Start MySQL on boot
RUN \
echo "service mysqld start" >> ~/.bashrc

EXPOSE 3306
