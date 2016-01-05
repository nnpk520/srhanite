FROM centos:7.1.1503
MAINTAINER Simon Hutson

# Get CentOS Updates
RUN \
yum -y update && \
yum clean all

# Install MySQL Pre-requisites
RUN \
yum -y install perl pwgen libpwqu libpwquality yum-utils && \
rm -fr /var/cache/*

# Install and Configure MySQL 5.6
# 1. Install Latest 5.x Package http://dev.mysql.com/downloads/repo/yum/
# 2. Disable All MySQL Repositories
# 3. Enable The Repository For MySQL 5.6
RUN \
yum -y install https://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm && \
yum-config-manager --disable mysql5* && \
yum-config-manager --enable mysql56-community && \
yum -y install mysql-community-server && \
rm -rf /var/cache/*

VOLUME /var/lib/mysql

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
