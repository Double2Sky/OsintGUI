#!/usr/bin/env bash
DOMAIN=$(zenity --entry --title "Pymeta" --text="Enter Domain" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))

	mkdir /root/Cases/pymeta/
	mkdir /root/Cases/pymeta/$DOMAIN
		pymeta -d $DOMAIN -s all -m 200 -j 5 -o /root/Cases/pymeta/$DOMAIN
			thunar "/root/Cases/pymeta/$DOMAIN" >/dev/null 2>&1 
