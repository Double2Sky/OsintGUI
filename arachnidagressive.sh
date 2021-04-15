#!/bin/env bash
URL=$(zenity --entry --text="Enter URL *With http://*")
sleep 3
arachnid -f all -t none --aggressive -R $URL
