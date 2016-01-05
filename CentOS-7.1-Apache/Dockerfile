#FROM simonhutson/srh-anite-centos-7.1.1503
FROM centos:7.1.1503
MAINTAINER Simon Hutson

RUN \
yum clean all && \
yum -y update && \
yum -y install httpd && \
yum clean all && \
rm -fr /var/cache/*

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart 
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
