#!/bin/bash

LOCATION=$(curl -s https://get.geojs.io/v1/ip/geo.json)
CITY=$(echo "$LOCATION" | jq -r '.city')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m")

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')

echo "City: $CITY"
echo "Temperature: $TEMP°C"
