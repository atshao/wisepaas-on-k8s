#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rabbitmq .
sudo docker tag rabbitmq ecgwc/rabbitmq
sudo docker push ecgwc/rabbitmq

