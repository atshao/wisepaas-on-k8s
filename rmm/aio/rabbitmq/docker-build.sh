#!/bin/bash
set -o errexit
set -o xtrace


sudo docker build -t rabbitmq .
sudo docker tag rabbitmq atshao/rabbitmq
sudo docker push atshao/rabbitmq

