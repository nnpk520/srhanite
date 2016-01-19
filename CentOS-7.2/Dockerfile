FROM centos:7.2.1511
MAINTAINER Simon Hutson

# Install common utilities, then clean installation files to minimise space
RUN \
yum -y update && \
yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils && \
yum clean all && \
rm -fr /var/cache/*
