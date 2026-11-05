#!/bin/bash

echo "Getting location from public IP..."

# Get location
LOCATION=$(curl -fsS https://ipwho.is/)

SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [[ "$SUCCESS" != "true" ]]; then
    echo "Location API failed:"
    echo "$LOCATION" | jq .
    exit 1
fi

IP=$(echo "$LOCATION" | jq -r '.ip')
CITY=$(echo "$LOCATION" | jq -r '.city')
REGION=$(echo "$LOCATION" | jq -r '.region')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

echo "Getting current weather..."

WEATHER=$(curl -fsSG \
    "https://api.open-meteo.com/v1/forecast" \
    --data-urlencode "latitude=$LAT" \
    --data-urlencode "longitude=$LON" \
    --data-urlencode "current=temperature_2m" \
    --data-urlencode "timezone=auto") || {
        echo "Weather API request failed."
        exit 1
    }

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
UNIT=$(echo "$WEATHER" | jq -r '.current_units.temperature_2m')

echo "================================"
echo "       LOCAL WEATHER REPORT"
echo "================================"
echo "IP Address : $IP"
echo "City       : $CITY"
echo "Region     : $REGION"
echo "Country    : $COUNTRY"
echo "Latitude   : $LAT"
echo "Longitude  : $LON"
echo "--------------------------------"
echo "Temperature: $TEMP $UNIT"
echo "================================"

