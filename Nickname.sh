#!/usr/bin/env bash

NICKNAME=$(zenity --entry --text="Enter NickName")
mkdir /root/Cases/Nickname
mkdir /root/Cases/Nickname/$NICKNAME
cd /root/Cases/Nickname/$NICKNAME
	maigret $NICKNAME -a -T
		sleep 5
		Investigo $NICKNAME -s -d
			sleep 5
			search4 -u $NICKNAME | tee -a output.txt
				thunar /root/Cases/Nickname/$NICKNAME
					/opt/scriptnOsint/osint -u $NICKNAME
