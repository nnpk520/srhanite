FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install MySQL Pre-requisites
RUN \
#yum -y install pwgen libpwqu && \
rm -fr /var/cache/*

# Copy Files To Image
#ADD mysql_setup.sql /tmp/

# Install and Configure MySQL 5.6
# 1. Install Latest 5.x Package http://dev.mysql.com/downloads/repo/yum/
# 2. Disable All MySQL Repositories
# 3. Enable The Repository For The Required MySQL Version
RUN \
yum -y install https://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm && \
yum-config-manager --disable mysql5* && \
yum-config-manager --enable mysql56-community && \
yum -y install mysql-community-server && \
rm -rf /var/cache/*

# Start MySQL
RUN \
service mysqld start && \
service mysqld status

EXPOSE 3306
