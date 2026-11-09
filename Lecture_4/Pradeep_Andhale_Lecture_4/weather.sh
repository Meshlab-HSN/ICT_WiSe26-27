#!/usr/bin/env bash
set -euo pipefail

LOCATION_DATA=$(curl -s https://ipinfo.io/json)
CITY=$(echo "$LOCATION_DATA" | jq -r '.city // "Unknown"')
REGION=$(echo "$LOCATION_DATA" | jq -r '.region // "Unknown"')
LOC=$(echo "$LOCATION_DATA" | jq -r '.loc // "52.52,13.405"')
LAT=$(echo "$LOC" | cut -d',' -f1)
LON=$(echo "$LOC" | cut -d',' -f2)

echo "Location detected: $CITY, $REGION (Lat: $LAT, Lon: $LON)"

WEATHER_DATA=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current_weather=true")
TEMP=$(echo "$WEATHER_DATA" | jq -r '.current_weather.temperature // "N/A"')
WINDSPEED=$(echo "$WEATHER_DATA" | jq -r '.current_weather.windspeed // "N/A"')

echo "Current Temperature: ${TEMP}°C"
echo "Current Wind Speed: ${WINDSPEED} km/h"
