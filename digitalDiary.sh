#!/bin/bash
#
#Promts user for an optional file name.
#
#Promts user for a diary entry and appends it to the file.
#


#Sets the date format.
date=$(date +%Y_%m_%d)


#Asks for the file title.
echo "What should the text called? (optional - pass empty)"
read name


#Asks for the diary entry.
echo "Please enter your entry"
read note


#Appends the text to the file and created the file if it does not exist.
echo "$note" >>  /usr/bin/digital_diary/"${date}_${name:-entry}.txt" 
