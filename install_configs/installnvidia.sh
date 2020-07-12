#!/bin/sh

lspci -nn | egrep -i "3d|display|vga"
read -p "Continue?" answer

if [ "$answer" == "y" ] ; then
	sudo apt-get install linux-headers-amd64 -y
	sudo apt-get install -t buster-backports nvidia-legacy-390xx-driver
else
	exit
fi

