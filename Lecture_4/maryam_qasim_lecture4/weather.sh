#!/bin/bash

location=$(curl -s https://ipwho.is/)

city=$(echo "$location" | jq -r '.city')

weather=$(curl -s "https://wttr.in/$city?format=j1")

temperature=$(echo "$weather" | jq -r '.current_condition[0].temp_C')

echo "Weather Report"
echo "City: $city"
echo "Temperature: $temperature C"
