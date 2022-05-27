#!/usr/bin/env bash

echo "The PATH is: $PATH"
echo "The terminal is: $TERM"
echo "The editor is: $EDITOR"
echo "The SHELL is: $SHELL"

if [ -z $EDITOR ]
then
  echo "The EDITOR variable is not set"
fi

PATH="/bob"
echo "The PATH is: $PATH"

# More Environment Variables
# HOME - user's home directory
# PATH - directories which are searched for commands
# HOSTNAME - hostname of the machine
# SHELL - shell that is being used
# USER - user of this session
# TERM - type of command-line terminal that is being used
