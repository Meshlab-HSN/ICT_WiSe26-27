#!/bin/bash
loc=$(curl -s http://ip-api.com/json)
city=$(echo "$loc" | jq -r .city)
country=$(echo "$loc" | jq -r .country)
lat=$(echo "$loc" | jq -r .lat)
lon=$(echo "$loc" | jq -r .lon)
temp=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true" | jq -r .current_weather.temperature)
echo "Current temperature in $city, $country: ${temp}°C"
