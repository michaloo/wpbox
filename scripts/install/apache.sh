#!/bin/bash

sudo add-apt-repository ppa:ondrej/apache2 -y
sudo apt-get update -y

sudo apt-get install \
  apache2=2.4.6-3+debphp.org~precise+1 \
  libapache2-mod-fcgid=1:2.3.7-0.1+debphp.org~precise+1  \
  -y

sudo a2enmod proxy_fcgi