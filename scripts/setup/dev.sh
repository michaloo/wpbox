#!/bin/bash

# create mysql database
mysql -uroot -e "CREATE DATABASE wordpress"


# install wordpress
cd /var/www && (
  sudo rm -f index.html
  
  wp core download --version=3.7.1 --force

  wp core config --dbname=wordpress --dbuser=root --extra-php <<PHP
  define( 'WP_DEBUG', true );
  define( 'WP_DEBUG_LOG', true );
PHP

  wp core install \
  --url="www.wordpress.local" \
  --title="Wordpress Dev" \
  --admin_user=admin \
  --admin_password=admin \
  --admin_email=admin@localhost
);
