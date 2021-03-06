#!/usr/bin/env bash

EMAIL=$(zenity --entry --text="Enter E-mail")
mkdir /root/Cases/Email
mkdir /root/Cases/Email/$EMAIL
cd /root/Cases/Email/$EMAIL
	curl emailrep.io/$EMAIL | tee -a output1.txt
		holehe $EMAIL --only-used -C
			sleep 3
			h8mail -t $EMAIL -o output2.txt
				sleep 3
				socialscan $EMAIL | tee -a output3.txt
					sleep 3
					python3 /opt/OSINT-SPY/osint-spy.py --email $EMAIL | tee -a output4.txt
						sleep 3
						thunar "/root/Cases/Email/$EMAIL"
							sleep 3
							/opt/scriptnOsint/osint -e $EMAIL
						
