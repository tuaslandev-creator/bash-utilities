#!/bin/bash

date=$(date +%Y_%m_%d)

echo "What should the text called? (optional - pass empty)"
read name

echo "Please enter your entry"
read note

echo "$note" >>  /usr/bin/digital_diary/"${date}_${name:-entry}.txt" 
