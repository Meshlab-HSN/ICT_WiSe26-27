#!/bin/bash
CITY=$(curl -s http://ip-api.com)
TEMP=$(curl -s "https://wttr.in{city}?format=%t")
echo "location: $CITY"
echo "Current Temperature: $TEMP"
