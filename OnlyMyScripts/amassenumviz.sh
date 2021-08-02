#!/bin/bash

# amass enum viz tool

echo "Enter domain"
read -r domain

mkdir -p "$HOME/Cases/$domain"
cd "$HOME/Cases/$domain" || exit 

amass intel -active -whois -d "$domain" | tee -a amass-"$domain".txt
gedit amass-"$domain".txt &

amass enum -passive -d "$domain"
amass enum -active -d "$domain" 
amass viz -d3 -o "$HOME/Cases/$domain"

screen -d -m firefix amass_d3.html

thunar "$HOME/Cases/$domain" >/dev/null 2>&1
