#!/bin/bash
# weather.sh: current temperature for the location of this machine's public IP
LOC=$(curl -s "http://ip-api.com/json/")
CITY=$(echo "$LOC" | jq -r '.city')
COUNTRY=$(echo "$LOC" | jq -r '.country')
LAT=$(echo "$LOC" | jq -r '.lat')
LON=$(echo "$LOC" | jq -r '.lon')
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m")
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
UNIT=$(echo "$WEATHER" | jq -r '.current_units.temperature_2m')
echo "Location: $CITY, $COUNTRY ($LAT, $LON)"
echo "Current temperature: $TEMP $UNIT"
