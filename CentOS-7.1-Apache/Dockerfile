FROM simonhutson/centos-7.1.1503
MAINTAINER Simon Hutson

RUN \
chmod 777 /usr/sbin && \
yum -y install httpd && \
yum clean all && \
rm -fr /var/cache/*

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod -v +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]

EXPOSE 80
