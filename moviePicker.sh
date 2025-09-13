#!/bin/bash

echo "Please enter target directory"

read -e dir

mapfile -t movie < <(find "$dir" -maxdepth 1 -type f -printf "%f\n" | shuf -n 3)

count=1

for file in "${movie[@]}"
do
    echo "$count) $file"
    ((count++))
done

movie_picker()
{
echo "Enter your choice please"
read choice

case "$choice" in
    1) echo "You have chosen movie 1"; xdg-open "$dir/${movie[0]}" ;;
    2) echo "You have chosen movie 2"; xdg-open "$dir/${movie[1]}" ;;
    3) echo "You have chosen movie 3"; xdg-open "$dir/${movie[2]}" ;;
    *) clear;  echo "You have entered an invalid option, please try again"; movie_picker ;;
esac
}

movie_picker
