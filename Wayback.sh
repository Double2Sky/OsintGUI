#!/usr/bin/env bash
DOMAIN=$(zenity --entry --text="Enter DOMAIN")
mkdir /root/Cases/Wayback
mkdir /root/Cases/Wayback/$DOMAIN
cd /root/Cases/Wayback/$DOMAIN
	/root/go/bin/waybackurls $DOMAIN
		sleep 5
		wayback_machine_downloader $DOMAIN
