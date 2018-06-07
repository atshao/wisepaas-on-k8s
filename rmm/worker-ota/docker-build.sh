#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-worker-ota .
sudo docker tag rmm-worker-ota atshao/rmm-worker-ota
sudo docker push atshao/rmm-worker-ota

