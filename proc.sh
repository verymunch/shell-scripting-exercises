#!/usr/bin/env bash

STATUS=0

if [ -z $1 ]
then
  echo "Please supply a PID (Process ID)"
  exit 1
fi

echo "Watching PID = $1"
while [ $STATUS -eq 0 ]
do
  # ps lists all running processes
  # send processes to null device
  ps $1 > /dev/null
  # let's us know if status was successful (0), other # otherwise
  STATUS=$?
done

echo "Process $1 has terminated"
exit 0
