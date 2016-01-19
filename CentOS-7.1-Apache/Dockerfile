FROM simonhutson/centos-7.1.1503
MAINTAINER Simon Hutson

# Install the latest Apache HTTP Server
RUN \
yum -y install httpd %% \
yum clean all && \
rm -fr /var/cache/*

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod -v +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["httpd -DFOREGROUND"]

EXPOSE 80
