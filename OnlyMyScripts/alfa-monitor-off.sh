#!/bin/bash


ifconfig wlx00c0caaba097 down 
iwconfig wlx00c0caaba097 mode managed
ifconfig wlx00c0caaba097 up
sudo systemctl start NetworkManager
