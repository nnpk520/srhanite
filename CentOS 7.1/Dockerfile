FROM scratch
MAINTAINER Simon Hutson

ADD /centos-7.1503-20150330_1749-docker.tar.xz /
CMD ["/bin/bash"]

# Install Pre-requisites
RUN \
yum clean all && \
yum -y update && \
rm -fr /var/cache/*
