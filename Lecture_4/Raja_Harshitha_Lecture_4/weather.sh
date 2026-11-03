#!/bin/bash

# Get location using public IP address
location=$(curl -fsS https://ipinfo.io/json)

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
coordinates=$(echo "$location" | jq -r '.loc')

# Extract latitude and longitude
latitude=$(echo "$coordinates" | cut -d',' -f1)
longitude=$(echo "$coordinates" | cut -d',' -f2)

# Get current temperature from Open-Meteo
weather=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current=temperature_2m")

temperature=$(echo "$weather" | jq -r '.current.temperature_2m')

echo "===== Local Weather Report ====="
echo "City: $city"
echo "Country: $country"
echo "Latitude: $latitude"
echo "Longitude: $longitude"
echo "Current Temperature: $temperature °C"
