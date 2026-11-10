#!/bin/bash

location=$(curl -s https://ipinfo.io/json)

city=$(echo "$location" | jq -r '.city')
region=$(echo "$location" | jq -r '.region')
country=$(echo "$location" | jq -r '.country')

weather=$(curl -s "https://wttr.in/$city?format=j1")

temperature=$(echo "$weather" | jq -r '.current_condition[0].temp_C')
feels_like=$(echo "$weather" | jq -r '.current_condition[0].FeelsLikeC')
description=$(echo "$weather" | jq -r '.current_condition[0].weatherDesc[0].value')

echo "LOCAL WEATHER REPORT"
echo "--------------------"
echo "Location: $city, $region, $country"
echo "Temperature: $temperature°C"
echo "Feels like: $feels_like°C"
echo "Weather: $description"
