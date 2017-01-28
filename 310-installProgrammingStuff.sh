#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

## C++ - Programming - Stuff
apt-get -y install g++ jedit geany kate vim gedit

###############################
## Java - Programming Stuff
#not working tg .... # apt-get -y install openjdk-7-jdk

## Scratch
apt-get -y install scratch

##BlueJ
dpkg -i ./lfsdir/bluej-317.deb

##greenfoot
# not working at the moment  .... tg ###  dpkg -i ./lfsdir/Greenfoot-linux-304.deb


########################END

## Free Pascal
apt-get -y install fpc
