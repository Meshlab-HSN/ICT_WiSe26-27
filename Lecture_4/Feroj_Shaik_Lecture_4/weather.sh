#!/bin/bash
LOCATION=$(curl -fsS https://ipwho.is/)
CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')
WEATHER=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m&timezone=auto")
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
echo "LOCAL WEATHER REPORT"
echo "City: $CITY"
echo "Country: $COUNTRY"
echo "Temperature: $TEMP C"
