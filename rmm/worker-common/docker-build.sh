#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-worker-common .
sudo docker tag rmm-worker-common ecgwc/rmm-worker-common
sudo docker push ecgwc/rmm-worker-common

