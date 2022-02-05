#!/bin/bash

acname=$(zenity --entry --text="Enter Account Name (ex: navalny)")
mkdir -p "/home/user/Cases/Toutatis/"
    toutatis -s $(session ID) -u "$acname" | tee -a "/home/user/Cases/Toutatis/$acname.txt"
        gedit "/home/user/Cases/Toutatis/$acname.txt"
        thunar "/home/user/Cases/Toutatis" >/dev/null 2>&1
        read
