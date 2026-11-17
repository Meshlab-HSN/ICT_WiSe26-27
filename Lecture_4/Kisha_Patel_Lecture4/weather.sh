#!/bin/bash

echo "================================"
echo "       LOCAL WEATHER REPORT"
echo "================================"

LOCATION=$(curl -fsS https://ipwho.is/)

SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Error: Unable to detect location."
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
REGION=$(echo "$LOCATION" | jq -r '.region')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

WEATHER=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m&temperature_unit=celsius")

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m // empty')
TIME=$(echo "$WEATHER" | jq -r '.current.time // "Unknown"')

if [ -z "$TEMP" ]; then
    echo "Error: Unable to retrieve temperature."
    exit 1
fi

echo "City: $CITY"
echo "Region: $REGION"
echo "Country: $COUNTRY"
echo "Latitude: $LAT"
echo "Longitude: $LON"
echo "Current Temperature: $TEMP °C"
echo "Weather Time: $TIME"

echo "================================"
echo "Weather report completed!"
