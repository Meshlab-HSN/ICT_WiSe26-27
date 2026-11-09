#!/bin/bash
IP=$(curl -s https://api.ipify.org)
CITY=$(curl -s https://ipinfo.io/city)
echo "IP: $IP"
echo "City: $CITY"
curl -s "https://wttr.in/$CITY?format=3"

