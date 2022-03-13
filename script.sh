#!/bin/bash
# -*- ENCODING: UTF-8 -*-

tar -xf vt.tar.gz -C .
sudo docker load < vt-db.tar
sudo docker load < vt-php-apache.tar
sudo docker load < vt-phpmyadmin.tar
sudo docker-compose up -d

exit