#!/usr/bin/env bash

DOMAIN=$(zenity --entry --title "Metagoofil" --text="Enter Domain" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))

	mkdir /root/Cases/Download_Files/
	mkdir /root/Cases/Download_Files/$DOMAIN
	cd /root/Cases/Download_Files/$DOMAIN
	
	mkdir metagoofil
		metagoofil -d $DOMAIN -w -e 60 -i 30 -t pdf,doc,xls,ppt,docx,xlsx,pptx -o /root/Cases/Download_Files/$DOMAIN/metagoofil/
		sleep 5
		exiftool /root/Cases/Download_Files/$DOMAIN/metagoofil/* | tee -a metadata.txt
		sleep 30
	mkdir deluxe				
		python3 /opt/deluxe/deluxe.py search -d $DOMAIN -n 200 -o /root/Cases/Download_Files/$DOMAIN/deluxe/
		sleep 5
		python3 /opt/deluxe/deluxe.py extract -m /root/Cases/Download_Files/$DOMAIN/deluxe/manifest.json -o /root/Cases/Download_Files/$DOMAIN/metadata2.txt  
		sleep 30		
	mkdir pymeta
		pymeta -d $DOMAIN -s all -m 50 -j 5 -o /root/Cases/Download_Files/$DOMAIN/pymeta/
		
thunar "/root/Cases/Download_Files/$DOMAIN" >/dev/null 2>&1 
