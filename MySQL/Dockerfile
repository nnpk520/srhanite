FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install MySQL Pre-requisites
#RUN \
#yum -y install libaio perl pwgen libpwquality php-mysql && \
#rm -fr /var/cache/*

# Copy Files To Image
ADD mysql_setup.sql /tmp/

# Install and Configure MySQL
RUN rpmkeys --import http://repo.mysql.com/RPM-GPG-KEY-mysql
RUN yum install -y https://repo.mysql.com/yum/mysql-5.7-community/docker/x86_64/mysql-community-server-minimal-5.7.10-1.el7.x86_64.rpm
RUN rm -rf /var/cache/*
RUN service mysqld start
RUN mysql < /tmp/mysql_setup.sql
RUN service mysqld stop
RUN rm -fr /tmp/mysql_setup.sql*

# Install and Configure MySQL
#RUN service mysqld start
#RUN mysql < /tmp/mysql_setup.sql
#RUN service mysqld stop
#RUN rm -fr /tmp/mysql_setup.sql*

# Start MySQL on boot
RUN \
echo "service mysqld start" >> ~/.bashrc

EXPOSE 3306
