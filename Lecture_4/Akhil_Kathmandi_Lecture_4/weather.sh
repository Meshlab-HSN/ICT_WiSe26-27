#!/bin/bash

echo "Detecting location..."

LOCATION=$(curl -s https://ipwho.is/)

SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Error: Unable to detect location."
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')

echo "Fetching weather for $CITY..."

WEATHER=$(curl -s "https://wttr.in/${CITY}?format=j1")

TEMP=$(echo "$WEATHER" | jq -r '.current_condition[0].temp_C')
FEELS=$(echo "$WEATHER" | jq -r '.current_condition[0].FeelsLikeC')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current_condition[0].humidity')

if [ "$TEMP" = "null" ] || [ -z "$TEMP" ]; then
    echo "Error: Unable to retrieve weather."
    exit 1
fi

echo "========== LOCAL WEATHER REPORT =========="
echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Temperature: $TEMP °C"
echo "Feels Like: $FEELS °C"
echo "Humidity: $HUMIDITY%"
echo "=========================================="
