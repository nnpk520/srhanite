FROM scratch
MAINTAINER The CentOS Project <cloud-ops@centos.org> - ami_creator

ADD centos65.tar.xz /
#ADD centos-7.1503-20150330_1749-docker.tar.xz /
CMD ["/bin/bash"]

# Install Pre-requisites
#RUN \
#yum clean all && \
#yum -y update && \
#yum -y install httpd mod_rewrite mod_ssl mov_env php php-common php-cli php-mysql && \
#rm -fr /var/cache/*

#RUN \
#echo "service httpd start" >> ~/.bashrc

#EXPOSE 80
