#!/bin/bash

set -e

# Build and start docker containers
docker-compose build
docker-compose up -d

# Set permissions on `var` folder
sudo chmod -R 777 ./var
