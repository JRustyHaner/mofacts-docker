#!/bin/bash

#install git
apt-get install git -y

#install docker from official docker repo
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#install docker-compose
apt-get install docker-ce docker-ce-cli containerd.io -y
apt-get install docker-compose -y

#add vagrant user to docker group
usermod -aG docker vagrant

#create symbolic link to /usr/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#restart docker service
service docker restart

# Spit out message to user as message of the day
echo "============================================================" | sudo tee -a /etc/motd
echo "Welcome to the MoFaCTs Docker Testing Vagrant Box!" | sudo tee -a /etc/motd
echo "============================================================" | sudo tee -a /etc/motd
echo "This box allows you to test the MoFaCTs Docker containers" | sudo tee -a /etc/motd
echo "You can find the MoFaCTs Docker containers at /mofacts-full and /mofacts-mini" | sudo tee -a /etc/motd
echo "You can find the MoFaCTs Assets and settings.json at /mofactsAssets" | sudo tee -a /etc/motd
echo "To start the MoFaCTs Docker containers, run the following commands:" | sudo tee -a /etc/motd
echo "cd /mofacts-full" or "cd /mofacts-mini" | sudo tee -a /etc/motd
echo "docker-compose up -d" | sudo tee -a /etc/motd
echo "============================================================" | sudo tee -a /etc/motd
