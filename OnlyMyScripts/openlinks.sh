#!/bin/bash

FILE="$1"

while read -r links; do 
	echo "Opening: $links"; screen -d -m firefox "$links"
done < "$FILE"
