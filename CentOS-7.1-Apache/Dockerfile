FROM simonhutson/centos-7.1.1503
MAINTAINER Simon Hutson

RUN \
yum -y install httpd && \
yum clean all && \
rm -fr /var/cache/*

# Simple startup script to avoid some issues observed with container restart 
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

EXPOSE 80
CMD ["/run-httpd.sh"]
