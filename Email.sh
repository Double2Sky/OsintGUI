#!/usr/bin/env bash

EMAIL=$(zenity --entry --text="Enter E-mail")
mkdir /root/Cases/Email
mkdir /root/Cases/Email/$EMAIL
cd /root/Cases/Email/$EMAIL
	holehe $EMAIL --only-used -C
		sleep 3
		h8mail -t $EMAIL -o output
