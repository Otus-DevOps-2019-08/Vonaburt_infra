#!/bin/sh
sudo service mongod stop
sudo apt-get purge mongodb-org
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb


sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt update
sudo apt install -y mongodb-org --allow-unauthenticated
sudo systemctl enable mongod
sudo systemctl restart mongod

