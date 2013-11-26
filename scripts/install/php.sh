#!/bin/bash


sudo add-apt-repository ppa:ondrej/php5-oldstable -y
sudo apt-get update -y

  sudo apt-get install \
    php5-common=5.4.22-1+debphp.org~precise+1 \
    php-apc=3.1.13-1~precise+1  \
    php5-cli=5.4.22-1+debphp.org~precise+1 \
    php5-curl=5.4.22-1+debphp.org~precise+1 \
    php5-mysqlnd=5.4.22-1+debphp.org~precise+1 \
    php5-gd=5.4.22-1+debphp.org~precise+1 \
    php5-fpm=5.4.22-1+debphp.org~precise+1 \
    php5-xmlrpc=5.4.22-1+debphp.org~precise+1 \
    php5-imap=5.4.22-1+debphp.org~precise+1 \
    php5-mcrypt=5.4.22-1+debphp.org~precise+1 \
    php-pear=5.4.22-1+debphp.org~precise+1 \
    php5-xdebug=2.2.3-1~precise+1 \
    -y
