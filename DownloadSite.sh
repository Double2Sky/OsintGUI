#!/usr/bin/env bash
SITE=$(zenity --entry --text="Enter URL (withot http://)")
mkdir /root/Cases/DownloadSite
mkdir /root/Cases/DownloadSite/$SITE
cd /root/Cases/DownloadSite/$SITE
	httrack http://$SITE O root/Cases/DownloadSite/$SITE
	thunar /root/Cases/DownloadSite/$SITE
