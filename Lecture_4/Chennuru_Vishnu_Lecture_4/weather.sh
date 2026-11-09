#!/bin/bash

# Fetch location data based on public IP
LOCATION_JSON=$(curl -s https://ipinfo.io/json)
CITY=$(echo "$LOCATION_JSON" | jq -r '.city')
REGION=$(echo "$LOCATION_JSON" | jq -r '.region')
COUNTRY=$(echo "$LOCATION_JSON" | jq -r '.country')
LOC=$(echo "$LOCATION_JSON" | jq -r '.loc')

LAT=$(echo "$LOC" | cut -d',' -f1)
LON=$(echo "$LOC" | cut -d',' -f2)

echo "Location: $CITY, $REGION,$COUNTRY ($LAT,$LON)"

# Fetch current temperature using wttr.in in JSON format
WEATHER_JSON=$(curl -s "https://wttr.in/${CITY}?format=j1")
TEMP_C=$(echo "$WEATHER_JSON" | jq -r '.current_condition[0].temp_C')
CONDITION=$(echo "$WEATHER_JSON" | jq -r '.current_condition[0].weatherDesc[0].value')

echo "Current Temperature: ${TEMP_C}°C ($CONDITION)"
