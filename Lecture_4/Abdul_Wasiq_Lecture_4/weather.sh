#!/bin/bash

LOCATION=$(curl -s https://ipwho.is/)

SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Location API failed"
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m")

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')

echo "Local Weather Report"
echo "Location: $CITY, $COUNTRY"
echo "Current Temperature: $TEMP ?C"
