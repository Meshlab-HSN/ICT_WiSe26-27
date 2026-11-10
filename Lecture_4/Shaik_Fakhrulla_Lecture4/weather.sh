#!/bin/bash
# Get location based on IP address
location=$(curl -s ipinfo.io)
city=$(echo "$location" | jq -r '.city' | sed 's/^null$/Unknown/')
latitude=$(echo "$location" | jq -r '.loc' | cut -d',' -f1)
longitude=$(echo "$location" | jq -r '.loc' | cut -d',' -f2)
# Get current temperature
weather=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current=temperature_2m")
temperature=$(echo "$weather" | jq -r '.current.temperature_2m')
echo "Weather Report"
echo "City: $city"
echo "Current Temperature: $temperature C"

