#/bin/bash

maryam -e crawler -d $1 | tee -a maryam-$1.txt
maryam -e dns_search -d $1 | tee -a maryam-$1.txt
maryam -e entry_points -d $1 | tee -a maryam-$1.txt
maryam -e wapps -d $1 | tee -a  maryam-$1.txt
maryam -e interest_files -d $1 --logs --backup --apache --admin --soap | tee -a maryam-$1.txt
maryam -e dnsbrute -d $1 | tee -a maryam-$1.txt
maryam -e filebrute -d $1 | tee -a maryam-$1.txt

read
#maryam -e crawl_pages -d $1 | tee -a maryam-$1.txt

#maryam -e crawler -d $domain
#maryam -e dns_search -d $domain
#maryam -e entry_points -d $domain
#maryam -e wapps -d $domain

#aquatone-discover --domain $domain
#aquatone-takeover --domain $domain
