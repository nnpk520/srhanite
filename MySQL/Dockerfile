FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install MySQL Pre-requisites
RUN \
yum -y install libaio perl pwgen libpwquality mysql-server && \
rm -fr /var/cache/*

# Copy Files To Image
ADD mysql_setup.sql /tmp/

# Start MySQL
RUN \
service mysql start && \
mysql < /tmp/mysql_setup.sql && \
rm /tmp/mysql_setup.sql.*

EXPOSE 3306
