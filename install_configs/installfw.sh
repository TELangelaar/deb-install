#!/bin/sh
# run with sudo.

# install
apt-get install ufw -y

# default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# allow ssh
sudo ufw allow 2222

#enable
sudo ufw enable

## to connect to a specific IP & port:
# sudo ufw allow from xxx.x.xxx.x to any xx
## or to allow traffic for a public network interface
# sudo ufw allow in on eth0 to any port 80
## or your database server to the private network interface:
# sudo ufw allow in on eth1 to any port 3306
