#!/bin/bash
echo -e "Email:yanyi5496@gmail.com \n"
echo -e "Install develop env starting \n"
echo -e "updateing \n"
apt-get update
apt-get install docker.io
echo "docker version is "
docker -v
echo -e "Downloading docker-compose \n"
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo -e "docker-compose downloaded \n"
sudo chmod +x /usr/local/bin/docker-compose
echo "docker-compose version is "
docker-compose --version
