#!/bin/bash
sudo apt -y update && sudo apt -y upgrade
cd 
mkdir Programs
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
sudo apt install -y 
sudo apt install -y 
sudo apt install -y 
sudo apt install -y 
sudo apt install -y 
sudo apt install -y 

python3 -m pip install arachnid-spider==0.9.4

git clone https://github.com/leohab75/anonsurf_GUI.git ~/Programs 
sudo chmod +x ~/Programs/anonsurf_GUI/install.sh
sudo bash ~/Programs/anonsurf_GUI/install.sh

git clone https://github.com/aboul3la/Sublist3r.git ~/Programs/Sublist3r
sudo -H pip3 install -r ~/Programs/Sublist3r/requirements.txt

git clone https://github.com/s0md3v/Photon.git ~/Programs/Photon
sudo -H pip3 install -r ~/Programs/Photon/requirements.txt

git clone https://github.com/opsdisk/metagoofil.git ~/Programs/metagoofil
sudo -H pip3 install -r ~/Programs/metagoofil/requirements.txt

git clone https://github.com/six2dez/reconftw ~/Programs/reconftw

git clone https://github.com/sherlock-project/sherlock.git ~/Programs/sherlock
python3 -m pip install -r ~/Programs/sherlock/requirements.txt

git clone https://github.com/smicallef/spiderfoot.git ~/Downloads/Programs/spiderfoot
sudo -H pip3 install -r ~/Programs/spiderfoot/requirements.txt

git clone https://github.com/soxoj/maigret ~/Programs/maigret
pip3 install ~/Programs/maigret/.

git clone https://github.com/megadose/holehe.git ~/Programs/holehe
cd ~/Programs/holehe && sudo python3 setup.py install
cd






