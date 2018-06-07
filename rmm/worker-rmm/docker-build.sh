#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-worker-rmm .
sudo docker tag rmm-worker-rmm atshao/rmm-worker-rmm
sudo docker push atshao/rmm-worker-rmm

