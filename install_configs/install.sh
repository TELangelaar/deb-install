#!/bin/sh

case $1 in 
intel)
        sudo apt-get install intel-microcode -y
        ;;
amd)    sudo apt-get install amd64-microcode -y
        ;;
esac

apt-get install vlc chromium vim cowsay fortune -y
apt-get install zsh
apt-get install git -y
