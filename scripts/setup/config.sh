#!/bin/bash

sudo sed -i '/DocumentRoot/a ProxyPassMatch ^/(.*\.php(/.*)?)$ fcgi://127.0.0.1:9000/var/www/$1' /etc/apache2/sites-available/000-default.conf
sudo sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php5/fpm/pool.d/www.conf

sudo usermod -a -G www-data $USER
sudo chown www-data:www-data /var/www
sudo chmod 777 /var/www

sudo service apache2 restart
sudo service php5-fpm restart
sudo service mysql restart