FROM centos:7.1.1503
MAINTAINER Simon Hutson

RUN \
chmod -R a+rwx /usr/bin && \
chmod -R a+rwx /usr/sbin && \
yum clean all && \
yum -y update && \
yum clean all && \
yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils && \
yum clean all && \
rm -fr /var/cache/*

# yum -y --exclude=iputils.x86_64* update && \
