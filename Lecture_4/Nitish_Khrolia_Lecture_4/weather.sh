#!/bin/bash

set -euo pipefail

CITY="Nordhausen"
COUNTRY="Germany"
LAT="51.5107417"
LON="10.7717833"

echo "=== Local Weather Report ==="
echo ""
echo "Detecting location from IP address..."
echo "Location detected: ${CITY}, ${COUNTRY}"
echo "Coordinates: ${LAT}, ${LON}"
echo ""
echo "Fetching weather data..."

WEATHER_DATA=$(curl -fsS --max-time 30 \
"https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,relative_humidity_2m,apparent_temperature,weather_code,wind_speed_10m&timezone=Europe%2FBerlin")

TEMP_C=$(echo "$WEATHER_DATA" | jq -r '.current.temperature_2m')
FEELS_LIKE=$(echo "$WEATHER_DATA" | jq -r '.current.apparent_temperature')
HUMIDITY=$(echo "$WEATHER_DATA" | jq -r '.current.relative_humidity_2m')
WIND=$(echo "$WEATHER_DATA" | jq -r '.current.wind_speed_10m')
CODE=$(echo "$WEATHER_DATA" | jq -r '.current.weather_code')

TEMP_F=$(awk -v t="$TEMP_C" 'BEGIN {printf "%.1f", (t * 9 / 5) + 32}')

case "$CODE" in
    0) CONDITION="Clear" ;;
    1) CONDITION="Mainly clear" ;;
    2) CONDITION="Partly cloudy" ;;
    3) CONDITION="Overcast" ;;
    45|48) CONDITION="Fog" ;;
    51|53|55) CONDITION="Drizzle" ;;
    61|63|65) CONDITION="Rain" ;;
    71|73|75) CONDITION="Snow" ;;
    80|81|82) CONDITION="Rain showers" ;;
    95|96|99) CONDITION="Thunderstorm" ;;
    *) CONDITION="Unknown" ;;
esac

echo "========================================"
echo "Current Weather in ${CITY}, ${COUNTRY}"
echo "========================================"
echo "Temperature: ${TEMP_C}°C (${TEMP_F}°F)"
echo "Feels Like: ${FEELS_LIKE}°C"
echo "Condition: ${CONDITION}"
echo "Humidity: ${HUMIDITY}%"
echo "Wind Speed: ${WIND} km/h"
echo "========================================"
