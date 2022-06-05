#!/usr/bin/env bash

COUNT=1
USER_NUM=$1

while [ $COUNT -lt $USER_NUM ]
do
  echo "Current COUNT value = $COUNT"
  ((COUNT++))
  if [ $COUNT -eq $USER_NUM ]
  then
    echo "Current COUNT value = $COUNT"
  fi
done

echo "loop finished."
exit 0
