#!/bin/bash
set -e

if [ "$1" = 'httpd' -a "$2" = '-DFOREGROUND' ]; then

  # Delete temporary httpd files from an incomplete shutdown
  rm -rf /run/httpd/* /tmp/httpd*

fi

exec "$@"
