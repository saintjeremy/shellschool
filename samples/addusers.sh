#!/bin/bash

# add a timestamp variable
TIMESTAMP=$(date +%s)

# check for root, exit if not
echo "am I root"
if [[ "${UID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root'
  exit 1
fi

# get username make it into a variable

read -p 'enter the username being created ' USERNAME

# get the real name
read -p 'enter the real name of the user for this login ' COMMENT

# set a password
read -p 'enter the password for this user ' PASSWORD

# create account
useradd -c "${COMMENT}" -m ${USERNAME}

# add password
echo ${PASSWORD} | passwd --stdin ${USERNAME}

# force password change
