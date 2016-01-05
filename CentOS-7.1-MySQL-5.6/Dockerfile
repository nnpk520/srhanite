FROM centos:7.1.1503
MAINTAINER Simon Hutson

# Install OS Updates and MySQL pre-requisites
RUN \
yum -y update && \
yum clean all && \
yum -y install perl pwgen libpwqu libpwquality yum-utils && \
rm -fr /var/cache/*

# Install and configure MySQL 5.6
# 1. Install latest 5.x package http://dev.mysql.com/downloads/repo/yum/
# 2. Disable all MySQL repositories
# 3. Enable the repository for MySQL 5.6
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
