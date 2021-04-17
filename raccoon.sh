#!/usr/bin/env bash
DOMAIN=$(zenity --entry --title "Raccoon-Scanner" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
mkdir /root/Cases/raccoon/
mkdir /root/Cases/raccoon/$DOMAIN
	raccoon $DOMAIN -o /root/Cases/raccoon/$DOMAIN
		thunar /root/Cases/raccoon/$DOMAIN
