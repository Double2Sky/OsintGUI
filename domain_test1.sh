#!/usr/bin/env bash
domain=$(zenity --entry --text=Enter domain)
mkdir /root/Cases/$domain
cd /root/Cases/$domain
	r3con1z3r -d $domain
		sleep 5
		raccoon -f -fr -o /root/Cases/$domain $domain
			sleep 5
			goohak $domain
		 		sleep 5
		 		midori $domain-r3con1z3r.html
		 		sleep 3
		 		thunar /root/Cases/$domain 
		 			sleep 3
		 			arachnid http://$domain
