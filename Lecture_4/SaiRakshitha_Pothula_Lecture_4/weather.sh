#!/bin/bash
# Get location from the public IP address
LOC=$(curl -s https://ipinfo.io/json)
CITY=$(echo "$LOC" | jq -r '.city')
COUNTRY=$(echo "$LOC" | jq -r '.country')
COORDS=$(echo "$LOC" | jq -r '.loc')
LAT=${COORDS%,*}
LON=${COORDS#*,}

# Get current temperature for those coordinates
TEMP=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true" | jq -r '.current_weather.temperature')

echo "Location: $CITY, $COUNTRY"
echo "Current temperature: $TEMP °C"
