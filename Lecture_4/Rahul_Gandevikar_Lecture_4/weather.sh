#!/bin/bash

echo "===== LOCAL WEATHER REPORT ====="

# Get location using IP address
LOCATION=$(curl -s https://ipwho.is/)

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')

if [ "$CITY" = "null" ] || [ -z "$CITY" ]; then
    echo "Could not determine your location."
    exit 1
fi

echo "City: $CITY"
echo "Country: $COUNTRY"

# Encode city for the weather request
CITY_URL=$(printf '%s' "$CITY" | jq -sRr @uri)

# Get current weather
WEATHER=$(curl -s "https://wttr.in/${CITY_URL}?format=j1")

TEMP=$(echo "$WEATHER" | jq -r \
'.current_condition[0].temp_C')

DESCRIPTION=$(echo "$WEATHER" | jq -r \
'.current_condition[0].weatherDesc[0].value')

echo "Temperature: ${TEMP}°C"
echo "Weather: $DESCRIPTION"

echo "===== END OF REPORT ====="
