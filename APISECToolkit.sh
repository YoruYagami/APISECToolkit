#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "This script must be run as root. Please run with sudo."
    exit 1
fi

# Update and upgrade the system
sudo apt update -y
sudo apt upgrade -y

# Install proxy2swagger
sudo pip3 install mitmproxy2swagger

# Install git
sudo apt install git

# Install gobuster
sudo apt install gobuster

# Install docker and docker-compose
sudo apt install docker-compose
sudo apt install docker.io

# Install golang
sudo apt install golang-go

# Install zaproxy
sudo apt install zaproxy

# Install latest postman
sudo wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz
sudo tar -zxvf postman-linux-x64.tar.gz -C /opt/
sudo rm -rf postman-linux-x64.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Install jwt_tool
sudo git clone https://github.com/ticarpi/jwt_tool.git /opt/jwt_tool
sudo pip3 install -r /opt/jwt_tool/requirements.txt
sudo chmod +x /opt/jwt_tool/jwt_tool.py
sudo ln -s /opt/jwt_tool/jwt_tool.py /usr/bin/jwt_tool

# Install kiterunner
sudo git clone https://github.com/assetnote/kiterunner.git /opt/kiterunner
sudo make -C /opt/kiterunner build
sudo ln -s /opt/kiterunner/dist/kr /usr/bin/kr

# Install arjun
sudo git clone https://github.com/s0md3v/Arjun.git /opt/Arjun
cd /opt/Arjun && sudo python3 setup.py install
