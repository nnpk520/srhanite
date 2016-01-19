FROM centos:7.1.1503
MAINTAINER Simon Hutson

# Install common utilities, then clean installation files to minimise space
RUN yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils && \
yum clean all && \
rm -fr /var/cache/*
