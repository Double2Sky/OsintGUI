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

git clone https://github.com/aboul3la/Sublist3r.git ~/Programs/Sublist3r
sudo -H pip3 install -r ~/Programs/Sublist3r/requirements.txt

git clone https://github.com/s0md3v/Photon.git ~/Programs/Photon
sudo -H pip3 install -r ~/Programs/Photon/requirements.txt


