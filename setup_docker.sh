#!/bin/bash

# Install Docker
curl -sSL https://get.docker.com | sh
which docker
if [ $? -neq 0 ]; then
    echo "Failed to install Docker. Aborting script"
    exit 1
fi

# Install docker-compose
sudo pip3 install docker-compose
which docker-compose
if [ $? -neq 0 ]; then
    echo "Failed to install Docker Compose. Aborting script"
    exit 1
fi

echo "Installed Docker and Docker Compose. Have fun"
