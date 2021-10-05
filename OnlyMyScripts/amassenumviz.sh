#!/bin/bash

# amass enum viz tool

echo "Enter domain"
read -r domain

mkdir -p "$HOME/Cases/$domain"
cd "$HOME/Cases/$domain" || exit 

amass intel -active -whois -d "$domain" | tee -a amass-"$domain".txt
gedit amass-"$domain".txt &

#file="$HOME/Cases/$domain/amass-$domain.txt"

#if zenity --question --text="Would you like to open the findings in a browser?"; then
#		while read -r links; do 
#		    echo "Opening: $links"; screen -d -m firefox "$links"
#		done < "$file"
#    else
#		echo "Done."
#fi 

amass enum -passive -d "$domain" | tee -a amass-"$domain"-sub.txt
amass enum -active -d "$domain" | tee -a amass-"$domain"-sub.txt
amass viz -d3 -d "$domain" -o "$HOME/Cases/$domain"

screen -d -m firefox "$HOME/Cases/$domain/amass_d3.html"

FILE="amass-"$domain"-sub.txt"

while read -r links; do 
	echo "Opening: $links"; screen -d -m firefox "$links"
done < "$FILE"

thunar "$HOME/Cases/$domain" >/dev/null 2>&1
