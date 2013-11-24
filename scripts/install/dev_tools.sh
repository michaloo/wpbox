#!/bin/bash

sudo apt-get install git -y

curl https://raw.github.com/wp-cli/wp-cli.github.com/master/installer.sh | VERSION="v0.12.1" bash
echo "export PATH=$HOME/.wp-cli/bin:\$PATH" >> $HOME/.bash_profile

#http://getcomposer.org/download/1.0.0-alpha7/composer.phar
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

echo " --- install node --- "
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
echo "source $HOME/.profile" >> .bash_profile
source $HOME/.bash_profile
nvm install 0.10.22
nvm use v0.10.22
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local