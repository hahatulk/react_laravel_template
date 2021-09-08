#!/bin/bash

echo -e "\n-> NPM INSTALL"
docker-compose exec web npm i

echo -e "\n-> NPM RUN BUILD"
docker-compose exec web npm run prod
