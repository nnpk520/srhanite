FROM centos:7.1.1503
MAINTAINER Simon Hutson

RUN \
yum clean all && \
yum -y update && \
yum -y install unzip curl wget tar vim nano && \
rm -fr /var/cache/*
