#!/bin/bash

# get files and metadata from domain

echo "Enter domain"

read -r "$(domain)"

mkdir -p ~/Cases/"$(domain)"
cd ~/Cases/"$(domain)" || exit

{
    goofile -d "$(domain)" -f pdf 
    goofile -d "$(domain)" -f doc 
    goofile -d "$(domain)" -f docx 
    goofile -d "$(domain)" -f txt 
    goofile -d "$(domain)" -f xls 
    goofile -d "$(domain)" -f xlsx 
    goofile -d "$(domain)" -f ppt
}   >> goofile-"$(domain)".txt 

wget -i goofile-"$(domain)".txt --no-check-certificate

exiftool ./* >> metadata.txt
