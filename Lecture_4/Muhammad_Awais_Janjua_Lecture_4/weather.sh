#!/bin/bash

location=$(curl -s https://ipinfo.io/json | jq -r '.city')
country=$(curl -s https://ipinfo.io/json | jq -r '.country')

temperature=$(curl -sS "https://wttr.in/$location?format=%t")

echo "Weather Report"
echo "Location: $location, $country"
echo "Current Temperature: $temperature"

