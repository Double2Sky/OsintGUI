#!/usr/bin/env bash
SITE=$(zenity --entry --text="Enter URL (withot http://)")
mkdir /root/Cases/DownloadSite
mkdir /root/Cases/DownloadSite/$SITE
cd /root/Cases/DownloadSite/$SITE
	httrack http://$SITE O
	thunar /root/Cases/DownloadSite/$SITE
