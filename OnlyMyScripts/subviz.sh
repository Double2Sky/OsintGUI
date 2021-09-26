#!/bin/bash

echo "Enter domain"
read -r domain

mkdir -p "$HOME/Cases/$domain"

cd /home/user/Tools/Sublist3r || exit
python3 ./sublist3r.py -d $domain -v -o /home/user/Cases/$domain/sublister.txt

FILE="/home/user/Cases/$domain/sublister.txt"

while read -r links; do 
	echo "Opening: $links"; screen -d -m firefox "$links"
done < "$FILE"
