FROM simonhutson/srh-anite-centos-7.1.1503
MAINTAINER Simon Hutson

# Install Pre-requisites
RUN \
#yum clean all && \
#yum -y update && \
yum -y install httpd mod_rewrite mod_ssl mod_env php php-common php-cli php-mysql unzip && \
rm -fr /var/cache/*

RUN \
echo "service httpd start" >> ~/.bashrc

EXPOSE 80
