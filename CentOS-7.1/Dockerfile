FROM centos:7.1.1503
MAINTAINER Simon Hutson

# Enable Systemd, which is included in the centos:7 base containers, but it is not active by default.
#ENV container docker
#RUN yum -y swap -- remove fakesystemd -- install systemd systemd-libs
#RUN yum -y update; yum clean all; \
#(cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
#rm -f /lib/systemd/system/multi-user.target.wants/*; \
#rm -f /etc/systemd/system/*.wants/*; \
#rm -f /lib/systemd/system/local-fs.target.wants/*; \
#rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
#rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
#rm -f /lib/systemd/system/basic.target.wants/*; \
#rm -f /lib/systemd/system/anaconda.target.wants/*;
#VOLUME [ "/sys/fs/cgroup" ]

# Install common utilities
RUN yum -y install unzip curl wget tar vim vim-enhanced nano yum-utils; yum clean all; \
rm -fr /var/cache/*
