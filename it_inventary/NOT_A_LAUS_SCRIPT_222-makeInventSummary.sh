#! /bin/bash

#--------------------------------------------------------------------------------------
#THIS IS NOT A LAUS SCRIPT!!
#this script has to be executed in the directory on the server (tests are here in tmp)
#this script has to be executed ONLY ONCE, at the end of the collection of data 
#--------------------------------------------------------------------------------------




#create a summary csv file of the fact sheets of the clients 

# create a variable to represent the filename
FILENAME="Inventary.csv"

# write to the file
echo -n > $FILENAME #delete if there is something

FILES=*.txt
for f in $FILES
do
  # take action on each file. $f store current file name
  echo "Processing $f file..."

  #------------------------------------------------------------
  #Prozessor Intel® Pentium(R) 3558U @ 1.70GHz × 2 
  ##ORIGINAL
  ##model name	: Intel(R) Pentium(R) 3558U @ 1.70GHz
  MODELNAME="$(cat $f | grep -m 1 "model name" | cut -c23-100)"
  ##CPU(s):                2
  ##  CPUS="$(awk '$0 ~ /CPU\(s\)\:/ {print $4$5$6$7$8$9}' $f)"
  NRCPUS="$(cat $f | grep -m 1 "CPU(s):" | cut -c24-100)"

  #------------------------------------------------------------
  #speicher 3,8GiB
  ##ORIGINAL
  ##Speicher:       3,8G       2,8G  
  MEM="$(cat $f | grep -m 1 "Speicher:" | cut -c17-20)"

  #------------------------------------------------------------
  #Plattenplatz 487,9 GB
  ##ORIGINAL
  ##device size with M = 1000*1000:      500107 MBytes (500 GB)
  SPACE="$(cat $f | grep -m 1 "device size with M = 1000" | cut -c39-100)"

  inventoryLine=""$(echo "$f" | sed -e "s/.txt$//")";$MODELNAME;$NRCPUS CPU(s);$MEM;$SPACE"
  echo $inventoryLine 
  echo $inventoryLine >> $FILENAME
done






