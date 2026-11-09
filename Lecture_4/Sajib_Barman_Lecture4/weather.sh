#!/bin/bash
set -euo pipefail

# Detect location from the public IP.
location=$(curl -fsS --max-time 20 https://ipwho.is/)
if ! jq -e '.success == true' <<< "$location" >/dev/null; then
    echo "Location lookup failed." >&2
    exit 1
fi

city=$(jq -er '.city' <<< "$location")
country=$(jq -er '.country' <<< "$location")
latitude=$(jq -er '.latitude | numbers' <<< "$location")
longitude=$(jq -er '.longitude | numbers' <<< "$location")

# Request current temperature for these coordinates.
url="https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude"
url="$url&current=temperature_2m&timezone=auto"
weather=$(curl -fsS --max-time 20 "$url")

temperature=$(jq -er '.current.temperature_2m | numbers' <<< "$weather")
weather_time=$(jq -er '.current.time' <<< "$weather")
weather_zone=$(jq -er '.timezone' <<< "$weather")

printf 'Location (from IP): %s, %s\n' "$city" "$country"
printf 'Coordinates: %s, %s\n' "$latitude" "$longitude"
printf 'Current temperature: %s degrees Celsius\n' "$temperature"
printf 'Weather time: %s (%s)\n' "$weather_time" "$weather_zone"
printf 'Weather source: https://open-meteo.com/\n'
