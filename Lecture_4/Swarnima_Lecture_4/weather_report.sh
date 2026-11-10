#!/bin/bash

set -euo pipefail

echo "================================"
echo "       LOCAL WEATHER REPORT"
echo "================================"

# Step 1: Detect location using public IP
location=$(curl -fsS https://ipwho.is/)

success=$(echo "$location" | jq -r '.success')

if [ "$success" != "true" ]; then
    echo "Error: Location detection failed."
    exit 1
fi

city=$(echo "$location" | jq -r '.city')
region=$(echo "$location" | jq -r '.region')
country=$(echo "$location" | jq -r '.country')
latitude=$(echo "$location" | jq -r '.latitude')
longitude=$(echo "$location" | jq -r '.longitude')

# Step 2: Request weather using coordinates
weather=$(curl -fsS --get \
    --data-urlencode "latitude=$latitude" \
    --data-urlencode "longitude=$longitude" \
    --data-urlencode "current=temperature_2m,weather_code" \
    --data-urlencode "timezone=auto" \
    "https://api.open-meteo.com/v1/forecast")

# Step 3: Extract current weather
temperature=$(echo "$weather" | jq -r \
    '.current.temperature_2m // empty')

weather_code=$(echo "$weather" | jq -r \
    '.current.weather_code // empty')

if [ -z "$temperature" ] || [ -z "$weather_code" ]; then
    echo "Error: Could not retrieve weather."
    exit 1
fi

# Step 4: Convert weather code into description
case "$weather_code" in
    0) condition="Clear sky" ;;
    1) condition="Mainly clear" ;;
    2) condition="Partly cloudy" ;;
    3) condition="Overcast" ;;
    45|48) condition="Fog" ;;
    51|53|55) condition="Drizzle" ;;
    56|57) condition="Freezing drizzle" ;;
    61|63|65) condition="Rain" ;;
    66|67) condition="Freezing rain" ;;
    71|73|75|77) condition="Snow" ;;
    80|81|82) condition="Rain showers" ;;
    85|86) condition="Snow showers" ;;
    95|96|97|99) condition="Thunderstorm" ;;
    *) condition="Unknown weather condition" ;;
esac

# Step 5: Display report
echo ""
echo "Location: $city, $region, $country"
echo "Temperature: ${temperature} °C"
echo "Weather: $condition"
echo "Weather data: Open-Meteo"
echo ""
echo "================================"
echo "Weather report completed!"
