#!/bin/bash
docker build -t loeken/alpine-nginx-php-fpm-phalcon-ansible .
docker push loeken/alpine-nginx-php-fpm-phalcon-ansible
