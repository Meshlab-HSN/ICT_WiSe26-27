#!/bin/bash

# Local Weather Information Tool
# Author: Akhil Syed

echo "=========================================="
echo "         LOCAL WEATHER INFORMATION       "
echo "=========================================="

# Retrieve the public IP address
PUBLIC_IP=$(curl -s https://api.ipify.org)

# Identify the location associated with the IP
GEO_DATA=$(curl -s "https://ipapi.co/${PUBLIC_IP}/json/")

CITY_NAME=$(echo "$GEO_DATA" | jq -r '.city')
COUNTRY_NAME=$(echo "$GEO_DATA" | jq -r '.country_name')
LATITUDE=$(echo "$GEO_DATA" | jq -r '.latitude')
LONGITUDE=$(echo "$GEO_DATA" | jq -r '.longitude')

# Request current weather details
WEATHER_DATA=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LATITUDE}&longitude=${LONGITUDE}&current=temperature_2m,apparent_temperature,relative_humidity_2m")

CURRENT_TEMP=$(echo "$WEATHER_DATA" | jq -r '.current.temperature_2m')
FEELS_TEMP=$(echo "$WEATHER_DATA" | jq -r '.current.apparent_temperature')
HUMIDITY_LEVEL=$(echo "$WEATHER_DATA" | jq -r '.current.relative_humidity_2m')

# Display the collected information
echo "Public IP: $PUBLIC_IP"
echo "Location: $CITY_NAME, $COUNTRY_NAME"
echo "Current Temperature: $CURRENT_TEMP °C"
echo "Feels Like: $FEELS_TEMP °C"
echo "Relative Humidity: $HUMIDITY_LEVEL%"
echo “***********”
echo "Weather report generated successfully."
