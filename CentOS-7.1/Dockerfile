FROM centos:7.1.1503
MAINTAINER Simon Hutson

RUN yum clean all
RUN yum update
RUN yum -y install unzip curl wget tar vim nano yum-utils
RUN rm -fr /var/cache/*
