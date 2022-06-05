#!/usr/bin/env bash

# first way to make a function
function Hello() {
  local LNAME=$1
  echo "Hello $LNAME"
}

# second way to make a function
Goodbye() {
  echo "Goodbye $1"
}

echo "Calling the Hello function"
Hello Bob

echo "Calling the Goodbye function"
Goodbye Robert

exit 0
