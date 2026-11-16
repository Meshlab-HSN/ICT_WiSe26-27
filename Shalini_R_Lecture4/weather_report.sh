#!/bin/bash

# Local Weather Report
# Detect location using public IP and retrieve current temperature.

set -e

echo "=================================="
echo "       LOCAL WEATHER REPORT"
echo "=================================="

# Step 1: Detect location using public IP
echo "Detecting your location..."

GEO_DATA=$(curl -fsS --max-time 20 https://ipwho.is/)

CITY=$(echo "$GEO_DATA" | jq -r '.city // "Unknown"')
REGION=$(echo "$GEO_DATA" | jq -r '.region // "Unknown"')
COUNTRY=$(echo "$GEO_DATA" | jq -r '.country // "Unknown"')
LATITUDE=$(echo "$GEO_DATA" | jq -er '.latitude')
LONGITUDE=$(echo "$GEO_DATA" | jq -er '.longitude')

echo "Location detected successfully!"
echo "City: $CITY"
echo "Region: $REGION"
echo "Country: $COUNTRY"

# Step 2: Retrieve current weather
echo ""
echo "Fetching current weather..."

WEATHER_DATA=$(curl -fsS --max-time 20 --get \
    --data-urlencode "latitude=$LATITUDE" \
    --data-urlencode "longitude=$LONGITUDE" \
    --data-urlencode "current=temperature_2m" \
    --data-urlencode "timezone=auto" \
    "https://api.open-meteo.com/v1/forecast")

TEMPERATURE=$(echo "$WEATHER_DATA" | jq -er '.current.temperature_2m')
UNIT=$(echo "$WEATHER_DATA" | jq -r '.current_units.temperature_2m')
TIME=$(echo "$WEATHER_DATA" | jq -r '.current.time')

# Step 3: Display weather report
echo ""
echo "=================================="
echo "          WEATHER RESULT"
echo "=================================="
echo "Location: $CITY, $REGION, $COUNTRY"
echo "Current Temperature: $TEMPERATURE $UNIT"
echo "Local Time: $TIME"
echo "=================================="
echo "Weather report completed!"
