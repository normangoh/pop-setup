#!/bin/bash
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`
echo "${green}This is a sample bash script.${reset}"
echo "${green}Getting latest package lists..${reset}"
apt-get update
echo "${green}Starting installation of Node.js..${reset}"
yes | apt-get install nodejs
echo "${green}Checking NodeJS version..${reset}"
node -v
echo "${green}Starting installation of NPM..${reset}"
yes | apt-get install npm
echo "${green}Checking NPM version..${reset}"
npm -v
echo "${green}Downloading Golang..${reset}"
# cd /home && wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz # Might need to manually update link to download the latest version.
echo "${green}Starting installation of Golang..${reset}"
# tar -C /usr/local -xzf /home/go1.12.6.linux-amd64.tar.gz # Update filename to the downloaded golang installer filename.
echo "${green}Preparing Golang..${reset}"
# echo $'\n'"export GOROOT=/usr/local/go" >> $HOME/.profile
# echo "export GOPATH=$HOME/go" >> $HOME/.profile
# echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile
# source $HOME/.profile # Need to find a way to refresh shell to get new environmental variables.
touch /root/.profile
# echo $'\n'"export GOROOT=/usr/local/go" >> /root/.profile
# echo "export GOPATH=$HOME/go" >> /root/.profile
# echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.profile
source /root/.profile
echo "${green}Creating work path for Golang..${reset}"
mkdir $HOME/go
echo "${green}Checking Golang version..${reset}"
# go version