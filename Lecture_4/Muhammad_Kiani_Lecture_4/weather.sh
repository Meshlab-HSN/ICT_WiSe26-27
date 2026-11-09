#!/bin/bash

echo "===== LOCAL WEATHER REPORT ====="

# Get location from public IP
LOCATION=$(curl -fsS https://ipwho.is/)

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

# Check location data
if [ -z "$LAT" ] || [ "$LAT" = "null" ] || [ -z "$LON" ] || [ "$LON" = "null" ]; then
    echo "Error: Could not detect location."
    exit 1
fi

# Get current temperature
WEATHER=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m&timezone=auto") || {
    echo "Error: Could not retrieve weather data."
    exit 1
}

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
UNIT=$(echo "$WEATHER" | jq -r '.current_units.temperature_2m')

echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Latitude: $LAT"
echo "Longitude: $LON"
echo "Current Temperature: $TEMP $UNIT"

echo "================================"
