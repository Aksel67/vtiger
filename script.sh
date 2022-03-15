#!/bin/bash
# -*- ENCODING: UTF-8 -*-

sudo docker pull aksel67/vt-db
sudo docker pull aksel67/vt-php-apache
sudo docker pull aksel67/vt-phpmyadmin
sudo docker-compose up -d

exit