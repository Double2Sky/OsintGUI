#!/bin/bash
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




sudo apt install -y snapd gnome-software-plugin-snap
sudo systemctl enable --now snapd apparmor
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
pipx install blackwidow
pipx install socialscan
pipx install xeuledoc
pipx install witnessme
pipx install social-analyzer
pipx install waybackpacklibcurl4 libcurl4-openssl-dev
pipx install git+https://github.com/kisestu/Search4
pipx install git+https://github.com/domainaware/checkdmarc.git

export GO111MODULE=on
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get github.com/tomnomnom/waybackurls
gem install wayback_machine_downloader

git clone https://github.com/leohab75/anonsurf_GUI.git /opt/anonsurf_GUI 
sudo chmod +x /opt/anonsurf_GUI/install.sh
sudo bash /opt/anonsurf_GUI/install.sh

git clone https://github.com/aboul3la/Sublist3r.git /opt/Sublist3r
sudo -H pip3 install -r /opt/Sublist3r/requirements.txt

git clone https://github.com/s0md3v/Photon.git /opt/Photon
sudo -H pip3 install -r /opt/Photon/requirements.txt

git clone https://github.com/opsdisk/metagoofil.git /opt/metagoofil
sudo -H pip3 install -r /opt/metagoofil/requirements.txt


git clone https://github.com/sherlock-project/sherlock.git /opt/sherlock
python3 -m pip install -r /opt/sherlock/requirements.txt

git clone https://github.com/smicallef/spiderfoot.git /opt/spiderfoot
sudo -H pip3 install -r /opt/spiderfoot/requirements.txt

git clone https://github.com/soxoj/maigret /opt/maigret
sudo pip3 install /opt/maigret/.

git clone https://github.com/megadose/holehe.git /opt/holehe
cd /opt/holehe && sudo python3 setup.py install


git clone https://github.com/thewhiteh4t/FinalRecon /opt/FinalRecon
sudo -H pip3 install -r  /opt/FinalRecon/requirements.txt

git clone https://github.com/m8r0wn/pymeta /opt/pymeta
cd /opt/pymeta && python3 setup.py install

sudo -S git clone https://github.com/laramies/theHarvester.git /opt/theHarvester
cd /opt/theHarvester || exit
git checkout 8b88a66
sudo -H pip3 install -r requirements.txt

git clone https://github.com/HowToFind-bot/YaSeeker /opt/YaSeeker
sudo -H pip3 install -r /opt/YaSeeker/requirements.txt

git clone https://github.com/twintproject/twint.git /opt/twint
sudo -H pip3 install /opt/twint
sudo -H pip3 install -r /opt/twint/requirements.txt

git clone https://github.com/six2dez/reconftw /opt/reconftw
cd /opt/reconftw/; sudo bash ./install.sh

git clone https://github.com/AhmedConstant/lazyGrandma /opt/lazyGrandma

git clone https://github.com/GeneralTesler/deluxe /opt/deluxe
pip3 install -r /opt/deluxe/requirements

git clone https://github.com/tdh8316/Investigo /opt/Investigo
cd /opt/Investigo && sudo go build

#git clone https://github.com/jsvine/waybackpack /opt/waybackpack

#git clone https://github.com/0xknown/Search4 /opt/Search4

git clone https://github.com/m1n64/MagmaOsint /opt/MagmaOsint
python3 -m pip install -r /opt/MagmaOsint/requirements.txt

git clone https://github.com/noptrix/lulzbuster /opt/lulzbuster
cd /opt/lulzbuster; make lulzbuster; make install

git clone https://github.com/sham00n/buster /opt/buster
cd /opt/buster && python3 setup.py install

git clone -q -b master https://github.com/kpcyrd/sn0int.git /opt/sn0int
cd /opt/sn0int/ && cargo install -f --path . 

git clone -q -b master https://github.com/twelvesec/gasmask.git /opt/gasmask
python3 -m pip install --progress-bar off -r /opt/gasmask/requirements.txt

#git clone https://github.com/sundowndev/PhoneInfoga /opt/PhoneInfoga

git clone https://github.com/0xInfection/TIDoS-Framework /opt/TIDoS-Framework

git clone https://github.com/saeeddhqan/evine /opt/evine

git clone https://github.com/1N3/Goohak /opt/Goohak

#git clone https://github.com/qeeqbox/social-analyzer /opt/social-analyzer

git clone https://github.com/Quantika14/email-osint-ripper /opt/email-osint-ripper

git clone https://github.com/maurosoria/dirsearch /opt/dirsearch

git clone https://github.com/ScriptnKitten/scriptnOsint /opt/scriptnOsint

git clone https://github.com/snooppr/snoop /opt/snoop

git clone https://github.com/megadose/OnionSearch /opt/OnionSearch

git clone https://github.com/woj-ciech/LeakLooker-X /opt/LeakLooker-X

git clone https://github.com/GerbenJavado/gainder /opt/LinkFinder

git clone https://github.com/qeeqbox/social-analyzer /opt/social-analyzer

git clone https://github.com/twelvesec/gasmask /opt/gasmask

git clone https://github.com/alpkeskin/mosint /opt/mosint

git clone https://github.com/megadose/holehe /opt/holehe

git clone https://github.com/Cignoraptor-ita/cignotrack /opt/cignotrack 

git clone https://github.com/eschultze/URLextractor /opt/URLextractor

git clone https://github.com/enemy-submarine/pidrila /opt/pidrila

git clone https://github.com/WebBreacher/WhatsMyName /opt/WhatsMyName

git clone https://github.com/HA71/Namechk /opt/Namechk

git clone https://github.com/mxrch/GHunt /opt/GHunt

git clone https://github.com/Zarcolio/sitedorks /opt/sitedorks




git clone https://github.com/CybernetiX-S3C/InfoSploit 

git clone https://github.com/Double2Sky/GhostRecon 
git clone https://github.com/m3n0sd0n4ld/uDork 


git clone https://github.com/enemy-submarine/pidrila 
git clone https://github.com/DedSecInside/TorBot 

git clone https://github.com/noptrix/nullscan 
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
