#1/bin/sh

# This script will make and build dmenu 
rm config.h
make
sudo make clean install
