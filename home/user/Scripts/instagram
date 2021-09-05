#!/usr/bin/env bash
##Instagram Menu Script

#define choices
opt1="instalooter"
opt2="instaloader"

timestamp=$(date +%Y-%m-%d:%H:%M)

socialmenu=$(zenity  --list  --title "Instagram:Choose Tool" --text "What do you want to do?" --width=400 --height=200 --radiolist  --column "Choose" --column "Option" TRUE "$opt1" FALSE "$opt2"  2> >(grep -v 'GtkDialog' >&2)) 

case $socialmenu in
			
	$opt1 ) #instalooter
	handle=$(zenity --entry --title "Instalooter" --text "Enter Instagram User ID" 2> >(grep -v 'GtkDialog' >&2))

	  if [ -n "$handle" ]; then

		if [ ! -d "/root/Cases/instalooter/$timestamp-$handle/" ]; then
     	  
	           mkdir /root/Cases/instalooter/$timestamp-$handle/
 		fi

	  instalooter user $handle /root/Cases/instalooter/$timestamp-$handle/ -v -m -d -e 2>/dev/null | zenity --progress --pulsate --no-cancel --auto-close --title="Instalooter" --text="Grabbing all photos for: $handle" 2> >(grep -v 'GtkDialog' >&2)
	  
	thunar /root/Cases/instalooter/$timestamp-$handle/ >/dev/null 2>&1

	  else
	  	zenity --error --text "No handle entered, exiting" 2> >(grep -v 'GtkDialog' >&2)
    		exit
	  fi
	  
	;;
	$opt2) #Instaloader
	mkdir /root/Cases/instaloader
	cd /root/Cases/instaloader
	handle=$(zenity --entry --title "Instaloader" --text "Enter Instagram User ID" 2> >(grep -v 'GtkDialog' >&2))
	instaloader $handle
	thunar /root/Cases/instaloader/$handle/ >/dev/null 2>&1
	
esac
