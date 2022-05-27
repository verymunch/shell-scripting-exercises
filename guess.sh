#!/usr/bin/env bash

COMPUTER=14
VALID=0

while [ $VALID -eq 0 ]
do
  read -p "Please guess a number: " NUMBER
  if [[ ( -z $NUMBER )]]
  then
    echo "Not enough parameters passed"
    continue
  elif [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "Non digit characters detected [$NUMBER]"
    continue
  elif [[ $NUMBER -lt $COMPUTER ]]
    then
      echo "You're too low [$NUMBER]"
      continue
    elif [[ $NUMBER -gt $COMPUTER ]]
    then
      echo "You're too high [$NUMBER]"
      continue
    else
      echo "You've guessed it"
    fi
    VALID=1
done
echo "The computer's number was $COMPUTER and you guessed [$NUMBER],
which was correct! You won!"
exit 0
