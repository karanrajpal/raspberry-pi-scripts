#!/bin/bash

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
which docker
if [ $? -neq 0 ]; then
    echo "Failed to install Docker. Aborting script"
    exit 1
fi
# Editing permissions so that docker can work
sudo usermod -a -G docker $USER

# Install docker-compose
sudo pip3 install docker-compose
which docker-compose
if [ $? -neq 0 ]; then
    echo "Failed to install Docker Compose. Aborting script"
    exit 1
fi

echo "Installed Docker and Docker Compose. Have fun"
