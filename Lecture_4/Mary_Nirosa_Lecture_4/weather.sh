#!/bin/bash

#Get location using public IP address
location=$(curl -s https://ipwho.is/)

#Check location request
success=$(echo "$location" | jq -r '.success')

if [ "$success" != "true" ]; then
    echo "Could not retrieve location."
    exit 1
fi

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
latitude=$(echo "$location" | jq -r '.latitude')
longitude=$(echo "$location" | jq -r '.longitude')

#Get current weather
weather=$(curl -fsSG "https://api.open-meteo.com/v1/forecast" --data-urlencode "latitude=$latitude" --data-urlencode "longitude=$longitude" --data-urlencode "current=temperature_2m" --data-urlencode "timezone=auto")
temperature=$(echo "$weather" | jq -r '.current.temperature_2m')
unit=$(echo "$weather" | jq -r '.current_units.temperature_2m')

#Display weather report
echo "-----LOCAL WEATHER REPORT-----"
echo "City: $city"
echo "Country: $country"
echo "Latitude: $latitude"
echo "Longitude: $longitude"
echo "Current Temperature: $temperature $unit"
echo "-------------------------------"
