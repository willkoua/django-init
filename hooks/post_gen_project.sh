#!/bin/bash

docker-compose build

docker-compose run api python manage.py migrate
