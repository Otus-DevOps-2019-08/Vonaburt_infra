#!/bin/bash

echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y -q mongodb-org
systemctl enable mongod
sudo service mongod start

