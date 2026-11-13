#!/bin/bash
# Get location from IP address
LOC=$(curl -s https://ipinfo.io/json)
CITY=$(echo "$LOC" | jq -r '.city')
COUNTRY=$(echo "$LOC" | jq -r '.country')
COORDS=$(echo "$LOC" | jq -r '.loc')
LAT=${COORDS%,*}
LON=${COORDS#*,}

# Get current temperature for that location
TEMP=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true" | jq -r '.current_weather.temperature')

echo "City:        $CITY"
echo "Country:     $COUNTRY"
echo "Latitude:    $LAT"
echo "Longitude:   $LON"
echo "Temperature: $TEMP °C"
