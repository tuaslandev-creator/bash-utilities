#!/bin/bash

ask_continue() {
while true
do
    read -e choice
    case "$choice" in
        y|Y) return 0 ;;
        n|N) return 1 ;;
        *) echo "This is not a valid input, please try again.";;
    esac
done
}


echo "Please enter the movie name to be searched"

read -e moviename


directories=()

echo "Please enter your directories"

while true
do
    echo "Please enter the directories you want to seach"
    read -e input
    if [ -d "$input" ]
    then
        directories+=("$input")
        echo "Do you want to enter more directories? y/n"


        if ! ask_continue;
        then
            break
        fi

    else
        echo "This input is not valid, please try again"
    fi
done


echo "Searching for $moviename in:"
printf '%s\n' "${directories[@]}"
echo "..."

clear

if [ ${#directories[@]} -gt 0 ]
then
    find "${directories[@]}" -iname "*$moviename*"
else
    echo "No valid directories were entered. Exiting."
fi

