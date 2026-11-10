#!/bin/bash

echo "===== LOCAL WEATHER REPORT ====="

# Detect location using IP address
LOCATION=$(curl -fsS https://ipwho.is/) || {
    echo "Unable to detect location."
    exit 1
}

SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Location service could not identify your IP."
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

echo "Location: $CITY, $COUNTRY"
echo "Fetching current weather..."

# Retrieve weather from Open-Meteo
WEATHER=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,apparent_temperature,weather_code&timezone=auto") || {
    echo "Unable to retrieve weather."
    exit 1
}

echo "$WEATHER" | jq -r '
.current as $c |
"Temperature: \($c.temperature_2m) °C",
"Weather: " + (
  if $c.weather_code == 0 then "Clear sky"
  elif $c.weather_code <= 3 then "Partly cloudy"
  elif $c.weather_code <= 48 then "Fog"
  elif $c.weather_code <= 57 then "Drizzle"
  elif $c.weather_code <= 67 then "Rain"
  elif $c.weather_code <= 77 then "Snow"
  elif $c.weather_code <= 82 then "Rain showers"
  elif $c.weather_code <= 86 then "Snow showers"
  else "Thunderstorm"
  end
),
"Feels like: \($c.apparent_temperature) °C"
'

echo "===== END OF REPORT ====="
