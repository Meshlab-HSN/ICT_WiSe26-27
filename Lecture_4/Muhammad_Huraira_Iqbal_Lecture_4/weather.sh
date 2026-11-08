#!/bin/bash
LOCATION=$(curl -s ipinfo.io/loc)
LAT=$(echo $LOCATION | cut -d"," -f1)
LON=$(echo $LOCATION | cut -d"," -f2)
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current_weather=true")
TEMP=$(echo $WEATHER | jq ".current_weather.temperature")
echo "Current Temperature: ${TEMP}C" 
