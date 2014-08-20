#!/usr/bin/env bash
# Vagrant provisioning file to install basic DEV tools

# First, try updating/upgrading apt-get
apt-get update
apt-get -y upgrade

# Install Git
apt-get -y install git

# Install Mongo
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
apt-get -y install mongodb-org

# Git clone bash-vim-rc
#git clone git@github.com:asiandrummer/bash-vim-rc.git
#cp ~/bash-vim-rc/.bashrc .bashrc
#cp ~/bash-vim-rc/.vimrc .vimrc
