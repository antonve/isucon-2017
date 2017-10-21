#!/bin/bash

set -ex

if [ -f /var/log/nginx/access.log ]; then
  sudo mv /var/log/nginx/access.log ./log/access.log.$(date "+%Y%m%d%H%M")
fi

sudo systemctl restart isubata.golang.service
sudo systemctl restart nginx.service
