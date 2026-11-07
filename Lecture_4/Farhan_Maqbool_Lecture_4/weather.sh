#!/bin/bash

set -euo pipefail

echo "================================"
echo "       LOCAL WEATHER REPORT"
echo "================================"

# Detect location using public IP
LOCATION=$(curl -fsS https://ipwho.is/)

SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [[ "$SUCCESS" != "true" ]]; then
    echo "Unable to detect location."
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

# Request current weather from Open-Meteo
WEATHER=$(curl -fsSG \
    --data-urlencode "latitude=$LAT" \
    --data-urlencode "longitude=$LON" \
    --data-urlencode "current=temperature_2m,relative_humidity_2m,weather_code" \
    --data-urlencode "timezone=auto" \
    https://api.open-meteo.com/v1/forecast)

TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current.relative_humidity_2m')
CODE=$(echo "$WEATHER" | jq -r '.current.weather_code')

# Convert weather code into description
case "$CODE" in
    0) DESCRIPTION="Clear sky" ;;
    1) DESCRIPTION="Mainly clear" ;;
    2) DESCRIPTION="Partly cloudy" ;;
    3) DESCRIPTION="Overcast" ;;
    45|48) DESCRIPTION="Foggy" ;;
    51|53|55) DESCRIPTION="Drizzle" ;;
    61|63|65) DESCRIPTION="Rain" ;;
    71|73|75) DESCRIPTION="Snowfall" ;;
    80|81|82) DESCRIPTION="Rain showers" ;;
    95|96|99) DESCRIPTION="Thunderstorm" ;;
    *) DESCRIPTION="Unknown weather condition" ;;
esac

echo "Location: $CITY, $COUNTRY"
echo "Temperature: ${TEMP}°C"
echo "Weather: $DESCRIPTION"
echo "Humidity: ${HUMIDITY}%"

echo "================================"
echo "Weather report completed."
