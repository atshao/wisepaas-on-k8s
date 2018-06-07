#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-portal .
sudo docker tag rmm-portal atshao/rmm-portal
sudo docker push atshao/rmm-portal

