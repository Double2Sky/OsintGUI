#!/bin/bash
sudo systemctl stop wg-quick@wg0   
sleep 2
sudo systemctl status wg-quick@wg0
