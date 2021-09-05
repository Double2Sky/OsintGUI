#!/usr/bin/env bash
DOMAIN=$(zenity --entry --text="Enter Domain")
cd /opt/reconftw;./reconftw.sh -d $DOMAIN -a 
