#!/usr/bin/env bash
url=$(zenity --entry --title "Sherlock" --text "Enter target Username" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
if [ -n "$url" ]; then
	sherlock "$url" --csv -o /root/Cases/"$url".csv | zenity --progress --pulsate --no-cancel --auto-close --title="Sherlock Downloader" --text="Report being saved to /root/Cases/" 2> >(grep -v 'GtkDialog' >&2)
	sleep 2
	thunar /root/Cases/ >/dev/null 2>&1
else
	zenity --error --text "Missing Username, exiting"
   	exit
fi 
