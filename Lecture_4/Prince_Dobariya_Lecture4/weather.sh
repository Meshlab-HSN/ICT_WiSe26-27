#!/bin/bash

# Get location using public IP address
location=$(curl -fsS https://ipwho.is/)

#Extract location information
city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
latitude=$(echo "$location" | jq -r '.latitude')
longitude=$(echo "$location" | jq -r '.longitude')

# Get current temperature
weather=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current=temperature_2m")

temperature=$(echo "$weather" | jq -r '.current.temperature_2m')

# Display weather report
echo "==== Local Weather Report ===="
echo "Location: $city, $country"
echo "Current Temperature: $temperature *C"
