#!/usr/bin/env bash
set -eu
location=$(curl -fsS --max-time 20 'https://ipwho.is/')
city=$(jq -er .city <<< "$location")
lat=$(jq -er '.latitude | numbers' <<< "$location")
lon=$(jq -er '.longitude | numbers' <<< "$location")
weather=$(curl -fsS --max-time 20 "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current=temperature_2m&temperature_unit=celsius")
temp=$(jq -er '.current.temperature_2m | numbers' <<< "$weather")
printf 'Location: %s\nCurrent temperature: %s celsius\n' "$city" "$temp"
