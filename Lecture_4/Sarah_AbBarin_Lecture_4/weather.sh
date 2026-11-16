#!/bin/bash

echo "===== LOCAL WEATHER REPORT ====="

# Get location information from the public IP address
LOCATION=$(curl -s https://ipwho.is/)

# Check whether the location request was successful
SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Could not determine your location."
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
REGION=$(echo "$LOCATION" | jq -r '.region')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

echo "Location: $CITY, $REGION, $COUNTRY"

# Get current weather using the location coordinates
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m")

TEMPERATURE=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
UNIT=$(echo "$WEATHER" | jq -r '.current_units.temperature_2m')

echo "Current temperature: $TEMPERATURE $UNIT"
echo "================================"
