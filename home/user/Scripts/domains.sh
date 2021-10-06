#!/usr/bin/env bash
##Domain Interact Menu Script

#define choices
opt1="Amass"
opt2="Sublist3r"
opt3="Photon"
opt4="TheHarvester"

timestamp=$(date +%Y-%m-%d:%H:%M)
fqdnregex="\b((xn--)?[a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,}\b"

domainmenu=$(zenity  --list  --title "Domain Tool" --text "What do you want to do?" --width=400 --height=300 --radiolist  --column "Choose" --column "Option" TRUE "$opt1" FALSE "$opt2" FALSE "$opt3" FALSE "$opt4" 2> >(grep -v 'GtkDialog' >&2)) 

case $domainmenu in
	"$opt1" ) #Amass
		domain=$(zenity --entry --title "Amass" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/Amass/ 2>/dev/null
				amass intel -whois -ip -src -d $domain  -o /home/user/Cases/Amass/$timestamp-$domain.1.txt 
				amass enum -src -brute -d $domain -o /home/user/Cases/Amass/$timestamp-$domain.2.txt -d $domain
				sleep 3
				thunar "/home/user/Cases/Amass/" >/dev/null 2>&1
				exit
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
			"$opt2" ) #Sublist3r
		domain=$(zenity --entry --title "Sublist3r" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/Sublist3r/ 2>/dev/null
				cd /home/user/Tools/Sublist3r || exit
				python3 sublist3r.py -d $domain -o /home/user/Cases/Sublist3r/sublist3r_$domain.txt
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
			"$opt3" ) #Photon
		domain=$(zenity --entry --title "Photon" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/Photon/ 2>/dev/null
				cd /home/user/Tools/Photon || exit
				python3 photon.py -u $domain --wayback --clone --keys -l 10 -t 100 --dns -o /home/user/Cases/Photon/$timestamp-$domain
				sleep 3
				thunar "/home/user/Cases/Photon/$timestamp-$domain" >/dev/null 2>&1
				exit
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
			"$opt4" ) #TheHarvester
		domain=$(zenity --entry --title "TheHarvester" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/theHarvester/ 2>/dev/null
				python3 /home/user/Tools/theHarvester/theHarvester.py -d $domain -b all -g --screenshot /home/user/Cases/theHarvester -n -c -f /home/user/Cases/theHarvester/$timestamp-$domain.html
				sleep 3
				thunar "/home/user/Cases/theHarvester"
				if [ -f /home/user/Cases/theHarvester/$timestamp-$domain.html  ]; then
					firefox "/home/user/Cases/theHarvester/$timestamp-$domain.html"	
				fi	
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
esac
