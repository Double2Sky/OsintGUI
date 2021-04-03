#!/bin/bash
domain=$(zenity --entry --text="Enter Domain")
mkdir /root/Cases/$domain
cd /opt/gasmask/
	python3 gasmask.py -d $domain -i vhosts,google,bing,yahoo,ask,dogpile,twitter,youtube,reddit,github,instagram,crt,pgp,netcraft,virustotal,dnsdump,spyse | tee -a /root/Cases/$domain/output.txt
	cd /root/Cases/$domain
	gedit output.txt
		sleep 3
		python3 /opt/OSINT-SPY/osint-spy.py --domain $domain | tee -a output2.txt
		gedit output2.txt
			sleep 3
			/root/go/bin/gospider -s http://$domain --sitemap -a -w -r -v | tee -a output3.txt
			gedit output3.txt
sleep 3
thunar /root/Cases/$domain
