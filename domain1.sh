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
    	theHarvester -d $domain -b baidu,bing,google,yahoo,virustotal,certspotter,crtsh,dnsdumpster,duckduckgo,exalead,hackertarget,intelx,hunter,netcraft,otx,pentesttools,projectdiscovery,qwant,rapiddns,securityTrails,sublist3r,threatcrowd,threatminer,trello,twitter,urlscan -f Resume_$domain.html
    	dmitry -wise $domain >> Resume_$domain.txt
    	nslookup www.$domain >> Resume_$domain.txt
       	dig authority $domain >> Resume_$domain.txt
    	dig nssearch $domain >> Resume_$domain.txt
    	dig additional $domain >> Resume_$domain.txt
    	dig nsid $domain >> Resume_$domain.txt
    	dnswalk -r -d $domain >> Resume_$domain.txt
    	masscan  $domain >> Resume_$domain.txt
    	whois $domain >> Resume_$domain.txt
    	photon -u $domain -l 3 -t 100 -o /root/Cases/$domain/photon_$domain.txt >> Resume_$domain.txt
    	sublist3r -d $domain -o /root/Cases/$domain/sublist3r_$domain.txt >> Resume_$domain.txt
    	gospider -s http://mybox.ru -o /root/Cases/$domain --sitemap -a -w -r -v 
    	goofile -d $domain -f txt >> Resume_$domain.txt
    	goofile -d $domain -f pdf >> Resume_$domain.txt
    	goofile -d $domain -f doc >> Resume_$domain.txt
    	goofile -d $domain -f docx >> Resume_$domain.txt
    	goofile -d $domain -f xls >> Resume_$domain.txt
    	goofile -d $domain -f xlsx >> Resume_$domain.txt
    	mv *.txt resultado
	mv *.html resultado
	mv *.xml resultado
else 
  echo 'Error! Please enter a domain.'
fi
