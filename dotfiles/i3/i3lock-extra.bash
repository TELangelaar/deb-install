#!/bin/bash

lockicon="$HOME/.config/i3/lock.png"
cap="$HOME/.config/i3/cap.png"

import -window root $cap #Make screenshot
convert $cap -scale 10% -scale 1000% $cap #Pixelate image
#convert $cap -blur 0x3 $cap #Blur has a nice effect but is slow
convert $cap $lockicon -gravity center -composite $cap #merge lockicon and screencap

i3lock -i $cap
