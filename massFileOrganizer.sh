#!/bin/bash

echo "What would you like to add to start of your files?"
read rename

echo "Where are your files located at?"
read fileloc


if ! cd "$fileloc"
then
    echo "Directory not found: $fileloc"
    exit 1
fi

for f in *; do
    if [ -f "$f" ] 
    then
        mv "$f" "${rename}$f"
    fi
done
