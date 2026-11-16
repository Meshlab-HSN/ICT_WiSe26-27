#!/bin/bash

# Local Weather Report
# Detect location using public IP and retrieve current temperature.

set -e

echo "=================================="
echo "       LOCAL WEATHER REPORT"
echo "=================================="

# Step 1: Get public IP address
IP=$(curl -fsS https://api.ipify.org)

# Step 2: Get location using public IP
GEO=$(curl -fsS "https://ipwho.is/${IP}")

CITY=$(echo "$GEO" | jq -r '.city')
REGION=$(echo "$GEO" | jq -r '.region')
COUNTRY=$(echo "$GEO" | jq -r '.country')
LAT=$(echo "$GEO" | jq -r '.latitude')
LON=$(echo "$GEO" | jq -r '.longitude')

# Step 3: Get current weather
WEATHER=$(curl -fsS \
"https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,relative_humidity_2m,apparent_temperature,wind_speed_10m&timezone=auto")

# Step 4: Extract weather information
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
FEELS=$(echo "$WEATHER" | jq -r '.current.apparent_temperature')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current.relative_humidity_2m')
WIND=$(echo "$WEATHER" | jq -r '.current.wind_speed_10m')
TIME=$(echo "$WEATHER" | jq -r '.current.time')

# Step 5: Display report
echo "Public IP : $IP"
echo "City      : $CITY"
echo "Region    : $REGION"
echo "Country   : $COUNTRY"
echo "----------------------------------"
echo "Temperature : $TEMP °C"
echo "Feels Like  : $FEELS °C"
echo "Humidity    : $HUMIDITY %"
echo "Wind Speed  : $WIND km/h"
echo "Local Time  : $TIME"
echo "=================================="
echo "Weather report completed!"
