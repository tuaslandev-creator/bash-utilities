#!/bin/bash

#This script deletes every file in the target directory that is not the wanted kind of file.
echo "Use this script with caution, this script can wipe files unintentionally with minor flaws"
echo "Please enter the target directory (/home/username/Desktop/Movies/, etc)"
echo "You can use 'Tab' to complete"
read -e dir

echo "Please enter the wanted kind of file (mp3, webm, mp4, etc)."

read file_kind

for i in "$dir"*
do
    if [[ "$i" == *."$file_kind" ]]
    then
        continue
    else
        rm "$i"
    fi
done
