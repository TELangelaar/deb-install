#!/bin/sh

sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

anaconda="Anaconda3-2020.02-Linux-x86_64.sh"

cd ~/Downloads/
wget -q https://repo.anaconda.com/archive/$anaconda

cd ~/
bash ~/Downloads/$anaconda
