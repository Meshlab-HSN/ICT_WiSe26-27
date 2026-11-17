#!/bin/bash
CITY=$(curl -s https://ipinfo.io)
TEMP=$(curl -s "https://wttr.in{CITY}?format=%t")
echo "Location: $CITY"
echo "Current Temperature: $TEMP"
