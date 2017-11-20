#!/bin/bash

# add a timestamp variable
TIMESTAMP=$(date +%s)

# check for root, exit if not
echo "am I root"
if [[ "${UID}" -eq 0 ]]
then
  echo 'I see you are root. You may proceed'
else
  echo 'you are not a root user, goodbye'
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
