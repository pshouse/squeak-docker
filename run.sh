#!/bin/bash
#Xvfb -screen 0 1024x768x16 -ac &
#sleep 1
#DISPLAY=:0 
$IMAGEROOT/Contents/LinuxAndWindows/Linux-i686/bin/squeak -vm-sound-null -vm-display-null $RESOURCES/Squeak*.image /_run.st $1 $2 $3
