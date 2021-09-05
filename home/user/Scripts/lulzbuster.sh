#!/usr/bin/env bash

URL=$(zenity --entry --text="Enter URL")
lulzbuster -s $URL 
