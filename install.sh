#!/bin/bash

sudo apt-get install software-properties-common       
sudo modprobe ashmem_linux                                            
sudo modprobe binder_linux  
sudo systemctl enable --now snapd apparmor    
sudo snap install  --devmode --beta anbox      
anbox launch --package=org.anbox.appmgr --component=org.anbox.appmgr.AppViewActivity

sudo apt -y update && sudo apt -y upgrade

sudo apt install -y python3
sudo apt install -y python-setuptools
sudo apt install -y jq
sudo apt install -y python3-pip
sudo apt install -y git
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y python-all
sudo apt install -y golang
sudo apt install -y net-tools
sudo apt install -y ruby
sudo apt install -y php
sudo apt install -y torbrowser-launcher
sudo apt install -y zsh
sudo apt install -y docker-compose
sudo apt install -y webhttrack
sudo apt install -y libimage-exiftool-perl
sudo apt install -y maltego
sudo apt install -y dirbuster
sudo apt install -y chromium
sudo apt install -y dmitry
sudo apt install -y docker-compose
sudo apt install -y exif
sudo apt install -y exifprobe
sudo apt install -y getallurls
sudo apt install -y gitleaks
sudo apt install -y konsole
sudo apt install -y mat2
sudo apt install -y mc
sudo apt install -y mediainfo-gui
sudo apt install -y sublist3r
sudo apt install -y photon
sudo apt install -y metagoofil
sudo apt install -y sherlock
sudo apt install -y spiderfoot
sudo apt install -y midori
sudo apt install -y osrframework
sudo apt install -y python3-all
sudo apt install -y stacer
sudo apt install -y htop
sudo apt install -y theharvester
sudo apt install -y webhttrack httrack
sudo apt install -y eyewitness
sudo apt install -y whatweb
sudo apt install -y wig
sudo apt install -y sslyze
sudo apt install -y dirb
sudo apt install -y dirbuster
sudo apt install -y gem
sudo apt install -y yad
sudo apt install -y python3-venv
sudo apt install -y links2
sudo apt install -y lynx
sudo apt install -y libcurl4 libcurl4-openssl-dev
sudo apt install -y cargo




sudo apt install -y snapd 
sudo apt install -y gnome-software-plugin-snap
sudo systemctl enable --now snapd apparmor
sudo snap install snap-store
sudo snap install --classic riseup-vpn
sudo snap install --candidate vscode
sudo snap install --edge miro


python3 -m pip install pipx
pipx install osrframework
pipx install h8mail 
pipx install arachnid-spider==0.9.4
pipx install Instalooter
pipx install Instaloader
pipx install raccoon-scanner
pipx install r3con1z3r
#pipx install blackwidow
pipx install socialscan
pipx install xeuledoc
pipx install witnessme
pipx install social-analyzer
pipx install waybackpack
pipx install git+https://github.com/kisestu/Search4
pipx install git+https://github.com/domainaware/checkdmarc.git

export GO111MODULE=on
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get github.com/tomnomnom/waybackurls
gem install wayback_machine_downloader

git clone https://github.com/leohab75/anonsurf_GUI.git /home/user/OsintTools/anonsurf_GUI 
sudo chmod +x /home/user/OsintTools/anonsurf_GUI/install.sh
sudo bash /home/user/OsintTools/anonsurf_GUI/install.sh

git clone https://github.com/aboul3la/Sublist3r.git /home/user/OsintTools/Sublist3r
sudo -H pip3 install -r /home/user/OsintTools/Sublist3r/requirements.txt

git clone https://github.com/s0md3v/Photon.git /home/user/OsintTools/Photon
sudo -H pip3 install -r /home/user/OsintTools/Photon/requirements.txt

git clone https://github.com/opsdisk/metagoofil.git /home/user/OsintTools/metagoofil
sudo -H pip3 install -r /home/user/OsintTools/metagoofil/requirements.txt


git clone https://github.com/sherlock-project/sherlock.git /home/user/OsintTools/sherlock
python3 -m pip install -r /home/user/OsintTools/sherlock/requirements.txt

git clone https://github.com/smicallef/spiderfoot.git /home/user/OsintTools/spiderfoot
sudo -H pip3 install -r /home/user/OsintTools/spiderfoot/requirements.txt

git clone https://github.com/soxoj/maigret /home/user/OsintTools/maigret
sudo pip3 install /home/user/OsintTools/maigret/.

git clone https://github.com/megadose/holehe.git /home/user/OsintTools/holehe
cd /home/user/OsintTools/holehe && sudo python3 setup.py install


git clone https://github.com/thewhiteh4t/FinalRecon /home/user/OsintTools/FinalRecon
sudo -H pip3 install -r  /home/user/OsintTools/FinalRecon/requirements.txt

git clone https://github.com/m8r0wn/pymeta /home/user/OsintTools/pymeta
cd /home/user/OsintTools/pymeta && python3 setup.py install

sudo -S git clone https://github.com/laramies/theHarvester.git /home/user/OsintTools/theHarvester
cd /home/user/OsintTools/theHarvester || exit
git checkout 8b88a66
sudo -H pip3 install -r requirements.txt

git clone https://github.com/HowToFind-bot/YaSeeker /home/user/OsintTools/YaSeeker
sudo -H pip3 install -r /home/user/OsintTools/YaSeeker/requirements.txt

git clone https://github.com/twintproject/twint.git /home/user/OsintTools/twint
sudo -H pip3 install /home/user/OsintTools/twint
sudo -H pip3 install -r /home/user/OsintTools/twint/requirements.txt

git clone https://github.com/six2dez/reconftw /home/user/OsintTools/reconftw
cd /home/user/OsintTools/reconftw/; bash ./install.sh

git clone https://github.com/AhmedConstant/lazyGrandma /home/user/OsintTools/lazyGrandma

git clone https://github.com/GeneralTesler/deluxe /home/user/OsintTools/deluxe
pip3 install -r /home/user/OsintTools/deluxe/requirements.txt

git clone https://github.com/tdh8316/Investigo /home/user/OsintTools/Investigo
cd /home/user/OsintTools/Investigo && go build

#git clone https://github.com/jsvine/waybackpack /home/user/OsintTools/waybackpack

#git clone https://github.com/0xknown/Search4 /home/user/OsintTools/Search4

git clone https://github.com/m1n64/MagmaOsint /home/user/OsintTools/MagmaOsint
python3 -m pip install -r /home/user/OsintTools/MagmaOsint/requirements.txt

git clone https://github.com/noptrix/lulzbuster /home/user/OsintTools/lulzbuster
cd /home/user/OsintTools/lulzbuster; make lulzbuster; make install

git clone https://github.com/sham00n/buster /home/user/OsintTools/buster
cd /home/user/OsintTools/buster && python3 setup.py install

git clone -q -b master https://github.com/kpcyrd/sn0int.git /home/user/OsintTools/sn0int
cd /home/user/OsintTools/sn0int/ && cargo install -f --path . 

git clone -q -b master https://github.com/twelvesec/gasmask.git /home/user/OsintTools/gasmask
python3 -m pip install --progress-bar off -r /home/user/OsintTools/gasmask/requirements.txt

git clone https://github.com/Lucksi/Mr.Holmes /home/user/OsintTools/Mr.Holmes

git clone https://github.com/1N3/Sn1per /home/user/OsintTools/Sn1per

#git clone https://github.com/sundowndev/PhoneInfoga /home/user/OsintTools/PhoneInfoga

git clone https://github.com/0xInfection/TIDoS-Framework /home/user/OsintTools/TIDoS-Framework

git clone https://github.com/saeeddhqan/evine /home/user/OsintTools/evine

git clone https://github.com/1N3/Goohak /home/user/OsintTools/Goohak

#git clone https://github.com/qeeqbox/social-analyzer /home/user/OsintTools/social-analyzer

git clone https://github.com/Quantika14/email-osint-ripper /home/user/OsintTools/email-osint-ripper

git clone https://github.com/maurosoria/dirsearch /home/user/OsintTools/dirsearch

git clone https://github.com/ScriptnKitten/scriptnOsint /home/user/OsintTools/scriptnOsint

git clone https://github.com/snooppr/snoop /home/user/OsintTools/snoop

git clone https://github.com/megadose/OnionSearch /home/user/OsintTools/OnionSearch

git clone https://github.com/woj-ciech/LeakLooker-X /home/user/OsintTools/LeakLooker-X

git clone https://github.com/GerbenJavado/gainder /home/user/OsintTools/LinkFinder

git clone https://github.com/qeeqbox/social-analyzer /home/user/OsintTools/social-analyzer

git clone https://github.com/twelvesec/gasmask /home/user/OsintTools/gasmask

git clone https://github.com/alpkeskin/mosint /home/user/OsintTools/mosint

git clone https://github.com/megadose/holehe /home/user/OsintTools/holehe

git clone https://github.com/Cignoraptor-ita/cignotrack /home/user/OsintTools/cignotrack 

git clone https://github.com/eschultze/URLextractor /home/user/OsintTools/URLextractor

git clone https://github.com/enemy-submarine/pidrila /home/user/OsintTools/pidrila

git clone https://github.com/WebBreacher/WhatsMyName /home/user/OsintTools/WhatsMyName

git clone https://github.com/HA71/Namechk /home/user/OsintTools/Namechk

git clone https://github.com/mxrch/GHunt /home/user/OsintTools/GHunt

git clone https://github.com/Zarcolio/sitedorks /home/user/OsintTools/sitedorks




git clone https://github.com/CybernetiX-S3C/InfoSploit 

git clone https://github.com/Double2Sky/GhostRecon 
git clone https://github.com/m3n0sd0n4ld/uDork 


git clone https://github.com/enemy-submarine/pidrila 
git clone https://github.com/DedSecInside/TorBot 

git clone https://github.com/nhome/user/OsintToolsrix/nullscan 
git clone https://github.com/kpcyrd/sn0int 
git clone https://github.com/abhisharma404/vault 

git clone https://github.com/Ekultek/WhatBreach 
git clone https://github.com/chriswmorris/Metaforge 
git clone https://github.com/saeeddhqan/Maryam 
git clone https://github.com/s0md3v/Striker 
git clone https://github.com/gocaio/goca &&
git clone https://github.com/bhavsec/reconspider &&
git clone https://github.com/vysecurity/autovpn &&

git clone https://github.com/eschultze/URLextractor &&
git clone https://github.com/devanshbatham/Gorecon &&

git clone https://github.com/Anon-Exploiter/SiteBroker &&

git clone https://github.com/restanse/NicknameFinder &&
git clone https://github.com/shmilylty/OneForAll &&
git clone https://github.com/m4ll0k/Infoga &&

git clone https://github.com/Cignoraptor-ita/cignotrack &&

git clone https://github.com/kennbroorg/iKy &&

git clone https://github.com/jocephus/WikiLeaker &&
git clone https://github.com/hatlord/Spiderpig &&
git clone https://github.com/m8r0wn/nullinux &&
git clone https://github.com/r3vn/badKarma &&

git clone https://github.com/twelvesec/gasmask &&
git clone https://github.com/jcesarstef/seosint &&

git clone https://github.com/Shiva108/OSIRA &&

git clone https://github.com/adnane-X-tebbaa/Katana &&
git clone https://github.com/Tuhinshubhra/RED_HAWK &&
git clone https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan &&
git clone https://github.com/SharadKumar97/OSINT-SPY &&
git clone https://github.com/GerbenJavado/LinkFinder &&
git clone https://github.com/eescanilla/OSINTBashKALI &&
git clone https://github.com/radenvodka/Recsech &&
git clone https://github.com/woj-ciech/LeakLooker-X &&


git clone https://github.com/ThomasPWy/drwho.sh &&
exit
