#!/bin/bash

# 1. Location aur Coordinates nikalein (ip-api.com use karke)
LOCATION=$(curl -s http://ip-api.com/json)
CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.lat')
LON=$(echo "$LOCATION" | jq -r '.lon')

# 2. Weather API se temperature nikalein
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m&temperature_unit=celsius&timezone=auto")
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')

# 3. Report print karein
echo "Local Weather Report"
echo "===================="
echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Latitude: $LAT"
echo "Longitude: $LON"
echo "Current Temperature: ${TEMP}°C"
