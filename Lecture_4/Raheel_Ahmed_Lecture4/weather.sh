#!/usr/bin/env bash
set -euo pipefail

echo "===== Local Weather Report ====="

# Detect approximate location using public IP
location=$(curl -fsS --max-time 15 https://ipwho.is/)

if [[ $(jq -r '.success' <<< "$location") != "true" ]]; then
    echo "Error: Could not determine location." >&2
    exit 1
fi

city=$(jq -r '.city' <<< "$location")
country=$(jq -r '.country' <<< "$location")
latitude=$(jq -r '.latitude' <<< "$location")
longitude=$(jq -r '.longitude' <<< "$location")

# Request current weather using coordinates
weather=$(curl -fsSG --max-time 15 \
    --data-urlencode "latitude=$latitude" \
    --data-urlencode "longitude=$longitude" \
    --data-urlencode "current=temperature_2m" \
    https://api.open-meteo.com/v1/forecast)

temperature=$(jq -r '.current.temperature_2m' <<< "$weather")
unit=$(jq -r '.current_units.temperature_2m' <<< "$weather")

if [[ "$temperature" == "null" || -z "$temperature" ]]; then
    echo "Error: Temperature unavailable." >&2
    exit 1
fi

echo "City: $city"
echo "Country: $country"
echo "Latitude: $latitude"
echo "Longitude: $longitude"
echo "Current temperature: $temperature $unit"
echo "================================"
