#!/bin/bash

# cd to working directory
cd /home/ubuntu/src


# creates redirection from port 80 to 5000
sudo iptables -A INPUT -i eth0 -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp --dport 5000 -j ACCEPT
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 5000


# update packages
sudo apt update


#install pip
sudo apt-get install python3-pip -y


#install pip dependencies
pip3 install -r requirements.txt


#Kill and start the python server
kill $(lsof -t -i:5000)
python3 server.py >> log.txt  2>&1 &