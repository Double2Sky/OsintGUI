#!/usr/bin/env bash
cd /home/user/Tools/spiderfoot
python3 sf.py -l 127.0.0.1:5001 &
sleep 5
firefox http://127.0.0.1:5001
