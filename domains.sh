#!/bin/bash


opt1="Amass"
opt2="Sublist3r"
opt3="Photon"
opt4="TheHarvester"
opt5="De-Cloud"

timestamp=$(date +%Y-%m-%d:%H:%M)
fqdnregex="\b((xn--)?[a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,}\b"

domainmenu=$(zenity  --list  --title "Domain Tool" --text "What do you want to do?" --width=400 --height=300 --radiolist  --column "Choose" --column "Option" TRUE "$opt1" FALSE "$opt2" FALSE "$opt3" FALSE "$opt4" FALSE "$opt5" 2> >(grep -v 'GtkDialog' >&2)) 

case $domainmenu in
	$opt1 ) #Amass
		domain=$(zenity --entry --title "Amass" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/Amass/
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
			$opt2 ) #Sublist3r
		domain=$(zenity --entry --title "Sublist3r" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/Sublist3r/
				sublist3r -d $domain -v -o /home/user/Cases/Sublist3r/sublist3r_$domain.txt && gedit /home/user/Cases/Sublist3r/sublist3r_$domain.txt &
				thunar /home/user/Cases/Sublist3r >/dev/null 2>&1
				sed -i 's/<BR>/\n/' /home/user/Cases/Sublist3r/sublist3r_$domain.txt 
				FILE=/home/user/Cases/Sublist3r/tmp-$domain.txt 
				if test -f "$FILE"; then
					cat /home/user/Cases/Sublist3r/sublist3r_$domain.txt | sort -u | tee -a /home/user/Cases/Sublist3r/tmp-$domain.txt
					cat /home/user/Cases/Sublist3r/tmp-$domain.txt | sort -u > /tmp/tmp.txt
					cat /tmp/tmp.txt > /home/user/Cases/Sublist3r/tmp-$domain.txt
					rm /tmp/tmp.txt
				else
					cat /home/user/Cases/Sublist3r/sublist3r_$domain.txt | sort -u | tee /home/user/Cases/Sublist3r/tmp-$domain.txt
				fi
				if zenity --question --text="Would you like to open the findings in a browser?"; then
					while read links; do 
						echo "Opening: $links"; screen -d -m firefox $links
					done < $FILE
					echo "Please wait for Firefox to open..."
				else
					echo "Done."
				fi
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
			$opt3 ) #Photon
		domain=$(zenity --entry --title "Photon" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/Photon/
				photon -u $domain -l 3 -t 100 -o /home/user/Cases/Photon/$timestamp-$domain
				sleep 3
				thunar "/home/user/Cases/Photon/$timestamp-$domain" >/dev/null 2>&1
				exit
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
			$opt4 ) #TheHarvester
		domain=$(zenity --entry --title "TheHarvester" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
		if [ ! -z "$domain" ]; then
			#verify legit domain
			if [[ $domain =~ $fqdnregex ]]; then
				#Run Tool
				mkdir /home/user/Cases/theHarvester/
				theHarvester -d $domain -b all -f /root/Cases/theHarvester/$timestamp-$domain.html
				if [ -f /home/user/Cases/theHarvester/$timestamp-$domain.html  ]; then
					firefox /home/user/Cases/theHarvester/$timestamp-$domain.html	
				fi	
			else
				zenity --error --text "Doesn't appear to be a legitimate domain, exiting!" 2> >(grep -v 'GtkDialog' >&2)
				exit
 			fi
		fi;;
			$opt5 ) #De-Cloud
				domain=$(zenity --entry --width=300 --title "De-Cloud the domain and find IP" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
				if [ ! -z "$domain" ]; then
					mkdir /home/user/Cases/De-Cloud
					#Run Tool
					cd /opt/csitools
					./decloud $domain | tee /home/user/Cases/De-Cloud/decloud-$domain.txt
					filename=/home/user/Cases/De-Cloud/decloud-$domain.txt
			
					FILE=/home/user/Cases/De-Cloud/tmp-$domain.txt
					if test -f "$FILE"; then
						cat /home/user/Cases/De-Cloud/decloud-$domain.txt | grep "Checking" | cut -d" " -f4 | sed 's/<BR>/\n/' | sort -u | tee -a /home/user/Cases/De-Cloud/tmp-$domain.txt
						cat /home/user/Cases/De-Cloud/tmp-$domain.txt | sed 's/<BR>/\n/' | sort -u > /tmp/tmp.txt
						cat /tmp/tmp.txt > /home/user/Cases/De-Cloud/tmp-$domain.txt 
						rm /tmp/tmp.txt	
					else
						cat /home/user/Cases/De-Cloud/decloud-$domain.txt | grep "Checking" | cut -d" " -f4 | sed 's/<BR>/\n/' | sort -u | tee /home/user/Cases/De-Cloud/tmp-$domain.txt
					fi
					gedit /home/user/Cases/De-Cloud/tmp-$domain.txt &		
			if zenity --question --text="Would you like to open the findings in a browser?"; then
				while read links; do 
				    echo "Opening: $links"; screen -d -m firefox $links
				done < $FILE
				echo "Please wait for Firefox to open..."
			else
				echo "Done."
			fi 
		fi
		Menu		
	;;
esac

