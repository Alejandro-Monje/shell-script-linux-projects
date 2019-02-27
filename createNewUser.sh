#!/bin/bash


#This script creates an account on the local system
#You will be prompted for the account name and password


#Ask for the user name
read -p 'Enter the username to create: ' USER_NAME

#Ask for the real name
read -p 'Enter the name of the person who this account is for: ' COMMENT
#Get password
read -p 'Enter the password to use for the account: ' PASSWORD
#create user
useradd -c "${COMMENT}" -m ${USER_NAME}

#set password for the user
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#force user to change password on first login
passwd -e ${USER_NAME}
