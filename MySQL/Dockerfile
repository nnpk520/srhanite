FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install MySQL Pre-requisites
RUN \
yum -y install libaio perl pwgen libpwquality mysql-server && \
rm -fr /var/cache/*

# Copy Files To Image
ADD mysql_setup.sql /tmp/

# Install and Configure MySQL
RUN \
service mysqld start && \
mysql < /tmp/mysql_setup.sql && \
rm -fr /tmp/mysql_setup.sql* && \
service mysqld stop

# Start MySQL on boot
RUN \
echo "service mysqld start" >> ~/.bashrc

EXPOSE 3306
