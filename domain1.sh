#!/bin/bash
#!/bin/bash
echo '*********************************************'
echo 'enter target domain: '
echo 'ex:example.com '
read domain

if [ $domain != '' ]
 then
mkdir /root/Cases/$domain
cd /root/Cases/$domain
	echo "dmitry"
	echo "dmitry" >> Resume_$domain.txt
    	dmitry -wise $domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "nslookup"
	echo "nslookup" >> Resume_$domain.txt
    	nslookup www.$domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "dig"
	echo "dig" >> Resume_$domain.txt
       	dig authority $domain >> Resume_$domain.txt
    	dig nssearch $domain >> Resume_$domain.txt
    	dig additional $domain >> Resume_$domain.txt
    	dig nsid $domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "whois"
	echo "whois" >> Resume_$domain.txt
    	whois $domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "photon"
	echo "photon" >> Resume_$domain.txt
    	photon -u $domain -l 3 -t 100 >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "sublist3r"
	echo "sublist3r" >> Resume_$domain.txt
    	sublist3r -d $domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "gasmask"
	echo "gasmask" >> Resume_$domain.txt
	cd /opt/gasmask/
    	python3 gasmask.py -d $domain -i vhosts,google,bing,yahoo,ask,dogpile,twitter,youtube,reddit,github,instagram,crt,pgp,netcraft,virustotal,dnsdump,spyse >> /root/Cases/$domain/Resume_$domain.txt
    	cd /root/Cases/$domain
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "theHarvester"
	echo "theHarvester" >> Resume_$domain.txt
    	theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan  >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "osint-spy"
	echo "osint-spy" >> Resume_$domain.txt
    	python3 /opt/OSINT-SPY/osint-spy.py --domain $domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "getallurls"
	echo "getallurls" >> Resume_$domain.txt
    	getallurls $domain >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "gospider"
	echo "gospider" >> Resume_$domain.txt
    	gospider -s http://mybox.ru -o /root/Cases/$domain --sitemap -a -w -r -v >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo " " >> Resume_$domain.txt
    	echo "goofile"
	echo "goofile" >> Resume_$domain.txt
    	goofile -d $domain -f txt >> Resume_$domain.txt
    	goofile -d $domain -f pdf >> Resume_$domain.txt
    	
    	
else 
  echo 'Error! Please enter a domain.'
fi
    	
else 
  echo 'Error! Please enter a domain.'
fi
