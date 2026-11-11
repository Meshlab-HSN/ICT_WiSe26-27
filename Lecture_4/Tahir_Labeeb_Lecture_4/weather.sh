#!/bin/bash
# IP
loc=$(curl -s http://ip-api.com/json/)
city=$(echo "$loc" | jq -r '.city')
lat=$(echo "$loc" | jq -r '.lat')
lon=$(curl -s "http://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true" | jq -r '.current_weather.temperature')
echo "Current temperature in $city: ${temp}C"
