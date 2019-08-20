#!/bin/bash
echo "Update package lists...";
apt update;
apt upgrade -y;
apt install -y openssh-server nginx vim curl;

echo "Install Docker, Docker-compose";
apt install apt-transport-https ca-certificates curl software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D;
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable";
apt-get update;
apt-get install docker-ce -y;
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose;
chmod +x /usr/local/bin/docker-compose;
