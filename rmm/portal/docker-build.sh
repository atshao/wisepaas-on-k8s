#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-portal .
sudo docker tag rmm-portal ecgwc/rmm-portal
sudo docker push ecgwc/rmm-portal

