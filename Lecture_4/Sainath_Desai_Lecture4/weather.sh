#!/usr/bin/env bash
# Local weather report: IP -> location -> current temperature
set -euo pipefail

for tool in curl jq; do
    command -v "$tool" >/dev/null || { echo "Missing tool: $tool" >&2; exit 1; }
done

# 1. Get location from public IP address
loc=$(curl -sf -m 10 https://ipinfo.io/json)
city=$(jq -r '.city' <<<"$loc")
country=$(jq -r '.country' <<<"$loc")
lat=$(jq -r '.loc' <<<"$loc" | cut -d, -f1)
lon=$(jq -r '.loc' <<<"$loc" | cut -d, -f2)

# 2. Get current weather for those coordinates
weather=$(curl -sf -m 10 "https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current=temperature_2m")
temp=$(jq -r '.current.temperature_2m' <<<"$weather")
unit=$(jq -r '.current_units.temperature_2m' <<<"$weather")

echo "Location:    ${city}, ${country} (${lat}, ${lon})"
echo "Temperature: ${temp}${unit}"
