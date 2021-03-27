#!/usr/bin/env bash

EMAIL=$(zenity --entry --text="Enter E-mail")
mkdir /root/Cases/Email
mkdir /root/Cases/Email/$EMAIL
cd /root/Cases/Email/$EMAIL
	holehe $EMAIL --only-used -C
		sleep 3
		h8mail -t $EMAIL -o output
			sleep 3
			socialscan $EMAIL | tee -a output.txt
				sleep 3
				python3 /opt/OSINT-SPY/osint-spy.py --email $EMAIL | tee -a output2.txt
					sleep 3
					thunar "/root/Cases/Email/$EMAIL"
						sleep 3
						/opt/scriptnOsint/osint -e $EMAIL
