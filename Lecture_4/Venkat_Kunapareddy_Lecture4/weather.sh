#!/bin/bash

echo "========== LOCAL WEATHER REPORT =========="

# Get public IP address
IP=$(curl -s https://api.ipify.org)

# Get location using IP address
LOCATION=$(curl -s "https://ipapi.co/$IP/json/")

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country_name')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

# Get current weather
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m,relative_humidity_2m,apparent_temperature")

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
FEELS=$(echo "$WEATHER" | jq -r '.current.apparent_temperature')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current.relative_humidity_2m')

echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Temperature: $TEMP °C"
echo "Feels Like: $FEELS °C"
echo "Humidity: $HUMIDITY%"
echo "=========================================="
