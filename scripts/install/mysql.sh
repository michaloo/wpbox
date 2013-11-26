#!/bin/bash


sudo add-apt-repository ppa:ondrej/mysql-5.6 -y
sudo apt-get update -y


sudo DEBIAN_FRONTEND=noninteractive apt-get install \
  mysql-client-5.6=5.6.14+dfsg-1+debphp.org~precise+1 \
  mysql-server-5.6=5.6.14+dfsg-1+debphp.org~precise+1 \
  -y
