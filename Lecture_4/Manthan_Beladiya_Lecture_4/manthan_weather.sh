#!/bin/bash

location=$(curl -s http://ip-api.com/json/)

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
lat=$(echo "$location" | jq -r '.lat')
lon=$(echo "$location" | jq -r '.lon')

weather=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true")

temp=$(echo "$weather" | jq -r '.current_weather.temperature')

echo "Location: $city, $country"
echo "Current temperature: ${temp}°C"
