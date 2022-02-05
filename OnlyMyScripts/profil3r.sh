#!/bin/bash

fname=$(zenity --entry --text="Enter FirstName")
lname=$(zenity --entry --text="Enter LastName")
#year=$(zenity --entry --text="Enter Year of Birth (ex 1990 or 90")
    cd "/home/user/Tools/profil3r" || exit 
    sudo python3 profil3r.py -p "$fname" "$lname"
    read
