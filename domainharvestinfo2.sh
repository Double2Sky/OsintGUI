#!/bin/bash
domain=$(zenity --entry --text="Enter Domain")
mkdir /root/Cases/$domain
cd /opt/gasmask/
	python3 gasmask.py -d $domain -i vhosts,google,bing,yahoo,ask,dogpile,twitter,youtube,reddit,github,instagram,crt,pgp,netcraft,virustotal,dnsdump,spyse | tee -a /root/Cases/$domain/output.$domain.txt
	cd /root/Cases/$domain
	gedit output.$domain.txt
		sleep 3
		python3 /opt/OSINT-SPY/osint-spy.py --domain $domain | tee -a output2.$domain.txt
		gedit output2.$domain.txt
			sleep 3
			/root/go/bin/gospider -s http://$domain --sitemap -a -w -r -v | tee -a output3.$domain.txt
			gedit output3.$domain.txt
sleep 3
thunar /root/Cases/$domain
