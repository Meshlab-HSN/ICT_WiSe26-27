#!/bin/bash
loc=$(curl -s http://ip-api.com/json)
city=$(echo "$loc" | jq -r .city)
lat=$(echo "$loc" | jq -r .lat)
lon=$(echo "$loc" | jq -r .lon)
temp=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current=temperature_2m" | jq -r .current.temperature_2m)
echo "Current temperature in $city: ${temp}°C"
