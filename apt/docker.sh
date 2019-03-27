#!/bin/bash

DOTFILES_DOCKER_DEBIAN_RELEASE=${DOTFILES_DOCKER_DEBIAN_RELEASE:="stretch"}

# update apt
## export DEBIAN_FRONTEND="noninteractive"
apt update

# remove previously installed Docker
## apt remove docker docker-engine docker.io* lxc-docker*

# install dependencies 4 cert
apt install -y apt-transport-https \
apt install -y ca-certificates
apt install -y curl
apt install -y gnupg2
apt install -y software-properties-common

# add Docker repo gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo "deb [arch=amd64] https://download.docker.com/linux/debian \
$DOTFILES_DOCKER_DEBIAN_RELEASE stable" >> /etc/apt/sources.list

apt update

# install Docker
apt install -y docker-ce

# manage Docker as a non-root user
groupadd docker
usermod -aG docker $USER

# configure Docker to start on boot
systemctl enable docker