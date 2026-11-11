#!/bin/bash
LOC=$(curl -s http://ip-api.com/json)
CITY=$(echo "$LOC" | jq -r .city)
COUNTRY=$(echo "$LOC" | jq -r .country)
LAT=$(echo "$LOC" | jq -r .lat)
LON=$(echo "$LOC" | jq -r .lon)
TEMP=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true" | jq -r .current_weather.temperature)
echo "Location: $CITY, $COUNTRY"
echo "Current temperature: $TEMP degrees C"
