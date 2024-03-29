#!/usr/bin/bash

opt1="Maigret"
opt2="Investigo"
opt3="Nexfil"
opt4="Marple"

nicknamemenu=$(zenity  --list  --title "Nickname Tools" --text "What do you want to do?" --width=400 --height=300 --radiolist  --column "Choose" --column "Option" TRUE "$opt1" FALSE "$opt2" FALSE "$opt3" FALSE "$opt4" 2> >(grep -v 'GtkDialog' >&2)) 

case $nicknamemenu in
    "$opt1" ) #Maigret
        nickname=$(zenity --entry --text="Enter NickName")
        mkdir -p "/home/user/Cases/Nickname/$nickname"
            maigret "$nickname" -a -T --with-domains --folderoutput "/home/user/Cases/Nickname/$nickname" -vv
            thunar "/home/user/Cases/Nickname/$nickname" >/dev/null 2>&1
            openlinks "/home/user/Cases/Nickname/$nickname/report_$nickname.txt"
        ;;

    "$opt2" ) #Investigo
        nickname=$(zenity --entry --text="Enter NickName")
        mkdir -p "/home/user/Cases/Nickname/$nickname"; cd "/home/user/Cases/Nickname/$nickname" || exit 
            investigo "$nickname" -s -d -v
            thunar "/home/user/Cases/Nickname/$nickname/screenshots/$nickname" >/dev/null 2>&1
        ;;

    "$opt3" ) #Nexfil
        nickname=$(zenity --entry --text="Enter NickName")
        mkdir -p "/home/user/Cases/Nickname/$nickname"
            python3 /home/user/Tools/nexfil/nexfil.py -u "$nickname" | tee -a "/home/user/Cases/Nickname/$nickname/$nickname.txt"
            openlinks "/home/user/Cases/Nickname/$nickname/$nickname.txt"
        ;;

    "$opt4" ) #Marple
        nickname=$(zenity --entry --text="Enter NickName")
        mkdir -p "/home/user/Cases/Nickname/$nickname"
            python3 /home/user/Tools/marple/marple.py --engines {dogpile,aol,yahoo,baidu,ask,duckduckgo,qwant,paginated,bing,torch,yandex,google,startpage,naver} --plugins {socid_extractor,metadata} --csv "/home/user/Cases/Nickname/$nickname/$nickname.csv" "$nickname"
        ;;
esac
