#!/usr/bin/env bash

NAMES=$@

# $@ takes in an array of values from user
for NAME in $NAMES
do
  if [ $NAME = "Tracy" ]
  then
    #break
    continue
  fi
  echo "Hello $NAME"
done

echo "for loop terminated"
exit 0
