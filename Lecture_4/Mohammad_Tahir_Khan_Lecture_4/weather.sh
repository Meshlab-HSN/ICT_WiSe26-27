#!/bin/bash

echo "LOCAL WEATHER REPORT"
echo "--------------------"


LOCATION=$(curl -fsS https://ipwho.is/)

CITY=$(echo "$LOCATION" | jq -r '.city // empty')
SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ] || [ -z "$CITY" ]; then
    echo "Could not determine your location."
    exit 1
fi

echo "City: $CITY"


ENCODED_CITY=$(jq -rn --arg city "$CITY" '$city | @uri')


WEATHER=$(curl -fsS "https://wttr.in/${ENCODED_CITY}?format=j1")

TEMP=$(echo "$WEATHER" | jq -r '.current_condition[0].temp_C // empty')

if [ -z "$TEMP" ]; then
    echo "Could not retrieve temperature."
    exit 1
fi

echo "Current Temperature: ${TEMP} °C"
echo "--------------------"
echo "Weather report completed."
