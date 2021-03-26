#!/bin/bash
sudo apt update
sudo apt install openjdk-8-jdk -y
cd /tmp
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.12.0-amd64.deb
sudo dpkg -i elasticsearch-7.12.0-amd64.deb
sudo apt update
sudo cat <<EOF >> /etc/elasticsearch/elasticsearch.yml
network.host: localhost
EOF
sudo systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service
