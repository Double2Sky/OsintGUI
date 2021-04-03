#!/bin/env bash
domain=$(zenity --entry --text="Enter Domain")
mkdir /root/Cases/$domain
cd /root/Cases/$domain
	photon -u $domain -l 3 -t 100 -o /root/Cases/$domain/photon.output
	thunar /root/Cases/$domain/photon.output
		sleep 3
		theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan -f /root/Cases/$domain/$domain.html
		firefox /root/Cases/$domain/$domain.html
			sleep 3
			finalrecon --full http://$domain -o /root/Cases/$domain/$domain.fn
			gedit /root/Cases/$domain/$domain.fn
sleep 3
thunar /root/Cases/$domain/
