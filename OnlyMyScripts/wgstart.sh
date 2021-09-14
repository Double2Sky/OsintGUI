#!/bin/bash
sudo systemctl start wg-quick@wg0
sleep 2
sudo systemctl status wg-quick@wg0
