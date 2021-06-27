#!/bin/bash
echo "Enter Domain."
read domain
mkdir /home/user/Cases/$domain-reconftw
cd /home/user/reconftw/
./reconftw.sh -d $domain -a -o /home/user/Cases/$domain-reconftw

#install reconftw at /home/user/reconftw/
#Use Xfce-terminal
