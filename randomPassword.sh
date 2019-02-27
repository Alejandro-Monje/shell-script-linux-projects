#!/bin/bash

#generate a list of random data

# A random number as a password
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

#Three random numbers togethor
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

#use the current/time as the basis for password
PASSWORD=$(date +%s)
echo "${PASSWORD}"

#add nanoseconds to the previous password
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

#Make a better random password
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"

#Modify this password more
PASSWORD=$(date +%sN${RANDOM}${RANDOM} | sha256sum | head -c48)
echo "${PASSWORD}"


#random special character
SPECIAL_CHARACTER=$(echo '!@#$%^&*()_-+=' | fold -w1 | shuf | head -c1)
echo "${SPECIAL_CHARACTER}${PASSWORD}"
