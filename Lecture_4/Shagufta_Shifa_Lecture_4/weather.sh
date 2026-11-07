#!/bin/bash
# Local weather report: IP address -> location -> current temperature

LOCATION=$(curl -s http://ip-api.com/json)
CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.lat')
LON=$(echo "$LOCATION" | jq -r '.lon')

WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current_weather=true")
TEMP=$(echo "$WEATHER" | jq -r '.current_weather.temperature')

echo "Location: $CITY, $COUNTRY"
echo "Current temperature: $TEMP C"
