#!/usr/bin/env bash

set -ex

PHP_VERSION=${1-"7.0"}

if [ "7.0" !== $PHP_VERSION ]; then
  sudo apt update -y

  sudo apt install \
  php${PHP_VERSION} \
  php${PHP_VERSION}-cli \
  php${PHP_VERSION}-common \
  php${PHP_VERSION}-curl \
  php${PHP_VERSION}-dev \
  php${PHP_VERSION}-gd \
  php${PHP_VERSION}-json \
  php${PHP_VERSION}-mbstring \
  php${PHP_VERSION}-mysql \
  php${PHP_VERSION}-opcache \
  php${PHP_VERSION}-readline \
  php${PHP_VERSION}-xml \
  php${PHP_VERSION}-zip -y
fi

sudo /usr/sbin/a2dismod php*
sudo /usr/sbin/a2enmod php${PHP_VERSION}

sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php${PHP_VERSION}
