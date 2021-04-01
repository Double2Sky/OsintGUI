#!/bin/env bash
domain=$(zenity --entry --text="Enter Domain")
mkdir /root/Cases/$domain
cd /root/Cases/$domain
	photon -u $domain -l 3 -t 100 -o /root/Cases/$domain/photon.output
	thunar /root/Cases/$domain/photon.output
	sleep 3
	theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan -f /root/Cases/$domain/$timestamp-$domain.html
	firefox /root/Cases/$domain/$timestamp-$domain.html
	sleep 3
	finalrecon --full http://$domain -o /root/Cases/$domain/$domain.fn
	gedit /root/Cases/$domain/$domain.fn
	sleep 3
	getallurls $domain -o /root/Cases/$domain/$domain.getallurls.txt
	gedit /root/Cases/$domain/$domain.getallurls.txt
	sleep 3
	cd /opt/gasmask/
	python3 gasmask.py -d $domain -i vhosts,google,bing,yahoo,ask,dogpile,twitter,youtube,reddit,github,instagram,crt,pgp,netcraft,virustotal,dnsdump,spyse >> /root/Cases/$domain/$domain.gasmask.txt
	cd /root/Cases/$domain
	gedit $domain.gasmask.txt
	sleep 3
	python3 /opt/OSINT-SPY/osint-spy.py --domain $domain >> $domain.osint-spy.txt
	gedit $domain.osint-spy.txt
	sleep 3
	gospider -s http://$domain --sitemap -a -w -r -v >> $domain.gospider.txt
	gedit $domain.gospider.txt
	
