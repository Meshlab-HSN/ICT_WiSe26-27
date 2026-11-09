#!/bin/bash

# Get location based on public IP address
LOCATION=$(curl -fsS https://ipapi.co/json/)

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country_name')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

# Check location information
if [ "$LAT" = "null" ] || [ "$LON" = "null" ]; then
    echo "Error: Could not determine location."
    exit 1
fi

# Get current weather from Open-Meteo
WEATHER=$(curl -fsS \
    "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m")

TEMPERATURE=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
UNIT=$(echo "$WEATHER" | jq -r '.current_units.temperature_2m')

# Display results
echo "Current Weather Report"
echo "----------------------"
echo "Location: $CITY, $COUNTRY"
echo "Coordinates: $LAT, $LON"
echo "Temperature: $TEMPERATURE $UNIT"

