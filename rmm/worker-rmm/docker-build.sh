#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-worker-rmm .
sudo docker tag rmm-worker-rmm ecgwc/rmm-worker-rmm
sudo docker push ecgwc/rmm-worker-rmm

