#!/bin/bash

set -x

sudo systemctl stop isubata.python.service
sudo systemctl disable isubata.python.service

sudo systemctl start isubata.golang.service
sudo systemctl enable isubata.golang.service
