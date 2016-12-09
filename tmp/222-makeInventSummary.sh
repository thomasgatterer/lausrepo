#! /bin/bash

#create a summary csv file of the fact sheets of the clients 

# create a variable to represent the filename
FILENAME="createInventary.csv"

# write to the file
echo -n > $FILENAME #delete if there is something
hostname >> $FILENAME
date +"%Y-%m-%d_%H-%M-%S" >> $FILENAME


FILES=*.txt
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  cat $f
done






