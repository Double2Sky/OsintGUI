#!/bin/bash

sudo systemctl stop NetworkManager
sudo airmon-ng check kill
ifconfig wlx00c0caaba097 down 
iwconfig wlx00c0caaba097 mode monitor
ifconfig wlx00c0caaba097 up
