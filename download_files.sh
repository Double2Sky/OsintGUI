#!/usr/bin/env bash
DOMAIN=$(zenity --entry --text=Enter Domain)
mkdir /root/Cases/Download_Files/
mkdir /root/Cases/Download_Files/$DOMAIN
cd /root/Cases/Download_Files/$DOMAIN
	metagoofil -d $DOMAIN -w -t pdf,doc,xls,ppt,docx,xlsx,pptx -o /root/Cases/Download_Files/$DOMAIN
		sleep 5
		python3 /opt/deluxe/deluxe.py search -d $DOMAIN -n 200 -o /root/Cases/Download_Files/$DOMAIN
