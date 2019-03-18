#!/bin/bash

echo 'this will act as your server: '
read -p 'Pick a port: ' portPicked

echo 'starting up ... '
echo 'Messages below: '

nc -l "${portPicked}"


echo 'done. . .'

