!/bin/bash
domain=$(zenity --entry --text="Enter Domain")

if [ $domain != '' ]
 then
mkdir /root/Cases/$domain
cd /root/Cases/$domain
	echo "dmitry"
    	dmitry -wise $domain 
    	echo "nslookup"
    	nslookup www.$domain 
    	echo "dig"
       	dig authority $domain
       	dig nssearch $domain
    	dig additional $domain 
    	dig nsid $domain 
    	echo "whois"
    	whois $domain
    	echo "photon"
    	photon -u $domain -l 3 -t 100 
    	echo "sublist3r"
    	sublist3r -d $domain 
    	echo "gasmask"
	cd /opt/gasmask/
    	python3 gasmask.py -d $domain -i vhosts,google,bing,yahoo,ask,dogpile,twitter,youtube,reddit,github,instagram,crt,pgp,netcraft,virustotal,dnsdump,spyse 
    	cd /root/Cases/$domain
    	echo "theHarvester"
    	theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan  
    	echo "osint-spy"
    	python3 /opt/OSINT-SPY/osint-spy.py --domain $domain 
    	echo "getallurls"
    	getallurls $domain
    	echo "gospider"
    	gospider -s http://$domain --sitemap -a -w -r -v 
    	echo "goofile"
    	goofile -d $domain -f txt 
    	goofile -d $domain -f pdf 
    	
    	
else 
  echo 'Error! Please enter a domain.'
fi
