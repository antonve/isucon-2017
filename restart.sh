#!/bin/bash

set -ex

# if [ -f /var/log/nginx/access.log ]; then
#   sudo mv /var/log/nginx/access.log ./log/access.log.$(date "+%Y%m%d%H%M")
# fi

sudo cp ./nginx.conf /etc/nginx/nginx.conf
sudo cp ./site-enabled-nginx.conf /etc/nginx/sites-enabled/nginx.conf

sudo systemctl restart isubata.golang.service
sudo systemctl restart nginx.service
