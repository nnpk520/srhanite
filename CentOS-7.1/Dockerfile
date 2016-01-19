FROM centos:7
MAINTAINER Simon Hutson

# Systemd is included in the centos 7 base containers, but it is not active by default. 
#RUN \
#yum clean all && \
#yum -y swap -- remove fakesystemd -- install systemd systemd-libs

# Install common utilities, then clean installation files to minimise space
RUN \
yum -y update
yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils && \
yum clean all && \
rm -fr /var/cache/*
