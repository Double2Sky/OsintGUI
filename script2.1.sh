#!/usr/bin/env zsh
##Domain Interact Menu Script
timestamp=$(date +%Y-%m-%d:%H:%M)
domain=$(zenity --entry --title "Domain / subdomains / emails" --text "Enter target domain name" --entry-text "" 2> >(grep -v 'GtkDialog' >&2))
	mkdir /root/Cases/$domain
	cd /root/Cases/$domain
		amass intel -whois -ip -src -d $domain  -o /root/Cases/$domain/$timestamp-$domain.1.txt 
		amass enum -src -brute -d $domain -o /root/Cases/$domain/$timestamp-$domain.2.txt -d $domain
			sleep 3
			sublist3r -d $domain -o /root/Cases/$domain/sublist3r_$domain.txt
				sleep 3
				photon -u $domain -l 3 -t 100 -o /root/Cases/$domain/$timestamp-$domain
					sleep 3
					theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan -f /root/Cases/$domain/$timestamp-$domain.html
						sleep 3
						mkdir /root/Cases/$domain/files
						metagoofil -d $domain -w -t pdf,doc,xls,ppt,docx,xlsx,pptx -o "/root/Cases/$domain/files/"$timestamp"_docs_"$domain""
							sleep 3
							raccoon $domain -o /root/Cases/$domain
								sleep 3 
								finalrecon --full http://$domain -o /root/Cases/$domain/$domain.fn
									sleep 3
									getallurls $domain -o /root/Cases/$domain/$domain.getallurls.txt
										sleep 3	
										knockpy -c $domain
										sleep 1				
										midori /root/Cases/$domain/$timestamp-$domain.html
										sleep 1
										thunar "/root/Cases/$domain" >/dev/null 2>&1
											sleep 1
											arachnid http://$domain
									
