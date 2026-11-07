#!/bin/bash

# Local Weather Report
# Detect location using public IP and retrieve current temperature.

set -e

echo "=================================="
echo "       LOCAL WEATHER REPORT"
echo "=================================="

# Step 1: Get location details directly via ip-api.com (No rate-limit issue)
GEO=$(curl -s "http://ip-api.com/json/")

CITY=$(echo "$GEO" | jq -r '.city')
REGION=$(echo "$GEO" | jq -r '.regionName')
COUNTRY=$(echo "$GEO" | jq -r '.country')
LAT=$(echo "$GEO" | jq -r '.lat')
LON=$(echo "$GEO" | jq -r '.lon')
IP=$(echo "$GEO" | jq -r '.query')

# Step 2: Get current weather from open-meteo
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,relative_humidity_2m,apparent_temperature,wind_speed_10m&timezone=auto")

# Step 3: Extract weather information
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
FEELS=$(echo "$WEATHER" | jq -r '.current.apparent_temperature')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current.relative_humidity_2m')
WIND=$(echo "$WEATHER" | jq -r '.current.wind_speed_10m')
TIME=$(echo "$WEATHER" | jq -r '.current.time')

# Step 4: Display report
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
