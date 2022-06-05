#!/usr/bin/env bash

USER_NAME=$1
echo Hello $USER_NAME
echo $(date)
echo $(pwd)

exit 0 # 0 means success, anything else usually means some sort of issue
# exit 100

# parameters are defined as the following:
# $1 (for one parameter) $2, $3, $4, ... $9
# generally don't go above 9 parameters as it requires using ""'s and is bad practice
# wrap terminal commands in $()
