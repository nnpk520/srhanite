FROM centos:7.1.1503
MAINTAINER Simon Hutson

RUN yum clean all
RUN yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils
RUN yum -y update
RUN rm -fr /var/cache/*
