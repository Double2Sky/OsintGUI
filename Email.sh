#!/usr/bin/env bash

EMAIL=$(zenity --entry --text="Enter E-mail")
mkdir /root/Cases/Email
mkdir /root/Cases/Email/$EMAILhttps://github.com/Double2Sky/OsintGUI/blob/main/Email.sh
cd /root/Cases/Email/$EMAIL
	holehe $EMAIL --only-used -C
		sleep 3
		h8mail -t $EMAIL -o output
