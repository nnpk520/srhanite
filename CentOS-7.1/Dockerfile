FROM centos:7.1.1503
MAINTAINER Simon Hutson

RUN chmod -R 777 /usr/bin
RUN chmod -R 777 /usr/sbin
Run yum clean all
RUN yum -y update
RUN yum clean all
RUN yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils
RUN yum clean all
RUN rm -fr /var/cache/*

# yum -y --exclude=iputils.x86_64* update && \
