#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-worker-common .
sudo docker tag rmm-worker-common atshao/rmm-worker-common
sudo docker push atshao/rmm-worker-common

