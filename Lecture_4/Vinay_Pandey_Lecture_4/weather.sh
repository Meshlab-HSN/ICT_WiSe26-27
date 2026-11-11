#!/bin/bash

location=$(curl -fsS https://ipwho.is/) || {
    echo "Could not detect location."
    exit 1
}

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
lat=$(echo "$location" | jq -r '.latitude')
lon=$(echo "$location" | jq -r '.longitude')

if [ "$city" = "null" ] || [ "$lat" = "null" ]; then
    echo "Location information is unavailable."
    exit 1
fi

weather=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current=temperature_2m") || {
    echo "Could not retrieve weather data."
    exit 1
}

temp=$(echo "$weather" | jq -r '.current.temperature_2m')

if [ "$temp" = "null" ]; then
    echo "Temperature information is unavailable."
    exit 1
fi

echo "Weather Report"
echo "Location: $city, $country"
echo "Temperature: $temp °C"
