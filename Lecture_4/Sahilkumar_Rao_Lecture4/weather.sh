#!/bin/bash
CITY=$(curl -s "http://ip-api.com/line/?fields=city")
TEMP=$(curl -sS -L "https://wttr.in/${city}?format=%t")
echo "location: $CITY"
echo "Current Temperature: $TEMP"
