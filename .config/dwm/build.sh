#1/bin/sh

# This script will make and build dwm
rm config.h
make
sudo make clean install
