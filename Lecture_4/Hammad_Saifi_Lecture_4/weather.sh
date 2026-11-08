#!/bin/bash

echo "Getting your location..."

# Detect location using public IP
ip_data=$(curl -fsS https://ipwho.is/) || {
    echo "Error: Location service unavailable."
    exit 1
}

success=$(echo "$ip_data" | jq -r '.success')

if [ "$success" != "true" ]; then
    echo "Error: Could not detect location."
    exit 1
fi

city=$(echo "$ip_data" | jq -r '.city')
region=$(echo "$ip_data" | jq -r '.region')
country=$(echo "$ip_data" | jq -r '.country')
lat=$(echo "$ip_data" | jq -r '.latitude')
lon=$(echo "$ip_data" | jq -r '.longitude')

# Get current weather using Open-Meteo
weather_data=$(curl -fsS \
"https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current=temperature_2m,apparent_temperature,weather_code&timezone=auto") || {
    echo "Error: Weather service unavailable."
    exit 1
}

temperature=$(echo "$weather_data" | jq -r '.current.temperature_2m')
feels_like=$(echo "$weather_data" | jq -r '.current.apparent_temperature')
code=$(echo "$weather_data" | jq -r '.current.weather_code')

case "$code" in
    0) condition="Clear sky" ;;
    1) condition="Mainly clear" ;;
    2) condition="Partly cloudy" ;;
    3) condition="Overcast" ;;
    45|48) condition="Fog" ;;
    51|53|55) condition="Drizzle" ;;
    61|63|65) condition="Rain" ;;
    71|73|75) condition="Snow" ;;
    80|81|82) condition="Rain showers" ;;
    95|96|99) condition="Thunderstorm" ;;
    *) condition="Unknown weather condition" ;;
esac

echo "========== LOCAL WEATHER REPORT =========="
echo "City: $city"
echo "Region: $region"
echo "Country: $country"
echo "Temperature: ${temperature} C"
echo "Feels Like: ${feels_like} C"
echo "Weather: $condition"
echo "=========================================="
