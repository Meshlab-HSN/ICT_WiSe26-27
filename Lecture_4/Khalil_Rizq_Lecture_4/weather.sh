#!/bin/bash

set -e

# Get location using public IP address
LOCATION=$(curl -fsS --retry 2 https://ipwho.is/)

# Check geolocation response
SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Error: IP geolocation failed."
    exit 1
fi

# Extract location details
CITY=$(echo "$LOCATION" | jq -r '.city')
REGION=$(echo "$LOCATION" | jq -r '.region')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

# Get current weather
WEATHER=$(curl -fsS --retry 2 \
"https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m")

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')

if [ "$TEMP" = "null" ]; then
    echo "Error: Could not retrieve temperature."
    exit 1
fi

# Display weather report
echo "================================"
echo "       LOCAL WEATHER REPORT"
echo "================================"
echo "City:        $CITY"
echo "Region:      $REGION"
echo "Country:     $COUNTRY"
echo "Latitude:    $LAT"
echo "Longitude:   $LON"
echo "Temperature: ${TEMP} °C"
echo "================================"

