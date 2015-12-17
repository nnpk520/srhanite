FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install MySQL Pre-requisites
RUN \
#yum -y install pwgen libpwqu && \
rm -fr /var/cache/*

# Copy Files To Image
#ADD mysql_setup.sql /tmp/

# Install and Configure MySQL
RUN \
yum-config-manager --add-repo http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm
RUN yum-config-manager --disable mysql?
#yum-config-manager --disable mysql57-community && \
RUN yum-config-manager --enable mysql56-community
RUN yum repolist enabled | grep "^mysql" 
RUN yum install mysql-community-server 
RUN yum list installed | grep "^mysql" 
#rpmkeys --import http://repo.mysql.com/RPM-GPG-KEY-mysql && \
#yum install -y https://repo.mysql.com/yum/mysql-5.7-community/docker/x86_64/mysql-community-server-minimal-5.7.10-1.el7.x86_64.rpm && \
RUN rm -rf /var/cache/*

# Start MySQL on boot
#RUN \
#echo "mysqld_safe" >> ~/.bashrc

#EXPOSE 3306
