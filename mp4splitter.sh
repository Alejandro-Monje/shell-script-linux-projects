#!/bin/bash
#Take a video file and split it up

#Get video file(.mp4) from user
read -p 'Please enter the name of the file: ' fileName

#Get number of parts they want to break it up into
read -p 'Please enter how many parts you want to break it up into: ' parts

#get size f the mp4 file
sizeOf=$(du -h ${fileName} | head -c3)
smallParts=$((sizeOf/parts | bc -l))

echo "splitting into ${smallParts}m sized files"

#will split mp4 file into the equal parts but will no longer be mp4 or playable
split -b "${smallParts}"m "${fileName}" parctice

#put files back together but no longer mp4 or playable
#cat part_file[start-end][start-end] > file.mp4
