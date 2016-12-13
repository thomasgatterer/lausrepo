#! /bin/bash

#create a fact sheet for the client and save it 

# create a variable to represent the filename
FILENAME="$(hostname).txt"
COMMON_DIR=./tmp

mkdir $COMMON_DIR -p
cd $COMMON_DIR 



# write to the file
echo -n > $FILENAME #delete if there is something
hostname >> $FILENAME
date +"%Y-%m-%d_%H-%M-%S" >> $FILENAME


echo -e "\n" >> $FILENAME
lscpu >> $FILENAME
cat /proc/cpuinfo >> $FILENAME

echo -e "\n" >> $FILENAME
free -h >> $FILENAME

echo -e "\n" >> $FILENAME
#df -h >> $FILENAME
hdparm -I /dev/sda >> $FILENAME
hdparm -I /dev/sdb >> $FILENAME
hdparm -I /dev/sdc >> $FILENAME
hdparm -I /dev/sdd >> $FILENAME



