#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rmm-worker-ota .
sudo docker tag rmm-worker-ota ecgwc/rmm-worker-ota
sudo docker push ecgwc/rmm-worker-ota

