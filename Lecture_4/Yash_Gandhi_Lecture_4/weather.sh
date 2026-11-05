#!/bin/bash

# Get location based on public IP address
LOCATION=$(curl -s https://ipapi.co/json/)

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country_name')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

# Get current temperature
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m&temperature_unit=celsius&timezone=auto")

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')

# Display weather report
echo "Local Weather Report"
echo "--------------------"
echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Latitude: $LAT"
echo "Longitude: $LON"
echo "Current Temperature: ${TEMP}°C"
