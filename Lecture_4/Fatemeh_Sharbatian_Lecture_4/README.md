# Weather report
#!/bin/bash
loc=$(curl -s http://ip-api.com/json)
lat=$(echo "$loc" | jq -r ".lat")
lon=$(echo "$loc" | jq -r ".lon")
city=$(echo "$loc" | jq -r ".city")
temp=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true" | jq -r ".current_weather.temperature")
echo "Temperature in $city: $temp C"
Temperature in Leipzig: 3.2 C
This script gets my location from my IP address and shows the current temperature.
