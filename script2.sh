#!/usr/bin/env zsh
##Domain Interact Menu Script
timestamp=$(date +%Y-%m-%d:%H:%M)
domain=$(zenity --entry --title "Domain / subdomains / emails" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
	mkdir /root/Cases/$domain
		amass intel -whois -ip -src -d $domain  -o /root/Cases/$domain/$timestamp-$domain.1.txt 
		amass enum -src -brute -d $domain -o /root/Cases/$domain/$timestamp-$domain.2.txt -d $domain
			sleep 3
			sublist3r -d $domain -o /root/Cases/$domain/sublist3r_$domain.txt
				sleep 3
				photon -u $domain -l 3 -t 100 -o /root/Cases/$domain/$timestamp-$domain
					sleep 3
					theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan -f /root/Cases/$domain/$timestamp-$domain.html
						firefox /root/Cases/$domain/$timestamp-$domain.html
							thunar "/root/Cases/$domain" >/dev/null 2>&1
		
