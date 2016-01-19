FROM centos:7.1.1503
MAINTAINER Simon Hutson

#RUN chmod -R 777 /usr/bin
#RUN chmod -R 777 /usr/sbin
#Run yum clean all
#RUN yum -y update
#RUN yum clean all
#RUN yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils
#RUN yum clean all
#RUN rm -fr /var/cache/*

RUN \ 
apt-get clean && \
apt-get update -y && \
apt-get install -y unzip curl wget tar vim vim-enhanced nano yum-utilsl && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*


# yum -y --exclude=iputils.x86_64* update && \
