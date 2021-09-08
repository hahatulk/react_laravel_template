#!/bin/bash

echo "-> APP DOWN"
docker-compose exec web php artisan down

echo -e "\n-> GIT PULL"
git pull

echo -e "\n-> COMPOSER INSTALL"
docker-compose exec web php ~/bin/composerphp8/composer install
docker-compose exec web php artisan package:discover --ansi

echo -e "\n-> MIGRATE"
docker-compose exec web php artisan migrate --force

echo -e "\n-> CONFIG CLEAR"
docker-compose exec web php artisan config:clear

echo -e "\n-> APP UP"
docker-compose exec web php artisan up

echo -e "\n-> APP QUEUE RESTART"
docker-compose exec web php artisan queue:restart
