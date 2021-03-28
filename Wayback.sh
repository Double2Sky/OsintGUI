#!/usr/bin/env bash
DOMAIN=$(zenity --entry --text="Enter DOMAIN")
mkdir /root/Cases/Wayback
mkdir /root/Cases/Wayback/$DOMAIN
cd /root/Cases/Wayback/$DOMAIN
	/root/go/bin/waybackurls $DOMAIN | tee -a output.txt
		sleep 5
		waybackpack $DOMAIN -d /root/Cases/Wayback/$DOMAIN --from-date 1990 --follow-redirects
			sleep 5
			wayback_machine_downloader $DOMAIN
			thunar /root/Cases/Wayback/$DOMAIN
