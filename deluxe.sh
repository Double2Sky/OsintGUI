#!/usr/bin/env bash
DOMAIN=$(zenity --entry --title "deluxe" --text="Enter Domain" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
	mkdir /root/Cases/deluxe/
	mkdir /root/Cases/deluxe/$DOMAIN
		python3 /opt/deluxe/deluxe.py search -d $DOMAIN -n 200 -o /root/Cases/deluxe/$DOMAIN
		sleep 5
		python3 /opt/deluxe/deluxe.py extract -m /root/Cases/deluxe/$DOMAIN/manifest.json -o /root/Cases/deluxe/$DOMAIN/metadata2.txt
			  thunar "/root/Cases/deluxe/$DOMAIN/" >/dev/null 2>&1
			  	gedit /root/Cases/deluxe/$DOMAIN/metadata2.txt
