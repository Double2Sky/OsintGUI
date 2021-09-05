#!/usr/bin/env bash

DOMAIN=$(zenity --entry --text="Enter domain")
cd /opt/Sn1per/
./sniper -t $DOMAIN 
thunar /usr/share/sniper/loot/
