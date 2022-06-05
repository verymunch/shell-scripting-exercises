#!/usr/bin/env bash

COUNT=1

#IFS is the internal field seperator (deliminter)
while IFS='' read -r LINE
do
  echo "LINE $COUNT: $LINE"
  ((COUNT++))
# last line uses redirection to point to a file that is being read from
# i.e. ./reader.sh names.txt
done < "$1"

exit 0

# Redirection helps direct output from read FILES
# Example One: ./reader.sh names.txt > output.txt
# this creates a new file called output.txt and adds contents from
# names.txt to this new file
# if you were to call this script again, it would erase the current
# contents of the output.txt file
# Example Two: ./reader.sh names.txt >> output.txt
# this adds contents of names.txt to output.txt in addition to
# what is already in the file (does not erase original contents)

# cksum is used to check the integrity of a file
# 3 values: cksum size of file in bytes and name of file 
