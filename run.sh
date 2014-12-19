Xvfb -screen 0 1024x768x16 -ac &
sleep 1
DISPLAY=:0 $IMAGEROOT/Contents/Linux-i686/bin/squeak -vm-sound-null $RESOURCES/Squeak*.image /_run.st
