#!/bin/bash
loc=$(curl -s http://ip-api.com/json)
lat=$(echo "$loc" | jq -r ".lat")
lon=$(echo "$loc" | jq -r ".lon")
city=$(echo "$loc" | jq -r ".city")
temp=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true" | jq -r ".current_weather.temperature")
echo "Temperature in $city: $temp C"
