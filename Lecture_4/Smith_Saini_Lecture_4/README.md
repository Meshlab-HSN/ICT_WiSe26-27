## 1. Bash Script
````bash
#!/bin/bash

# Local Weather Report
# Detect location using public IP and retrieve current temperature.

set -e

echo "=================================="
echo "       LOCAL WEATHER REPORT"
echo "=================================="

# Step 1: Get public IP address
IP=$(curl -fsS https://api.ipify.org)

# Step 2: Get location using public IP
GEO=$(curl -fsS "https://ipwho.is/${IP}")

CITY=$(echo "$GEO" | jq -r '.city')
REGION=$(echo "$GEO" | jq -r '.region')
COUNTRY=$(echo "$GEO" | jq -r '.country')
LAT=$(echo "$GEO" | jq -r '.latitude')
LON=$(echo "$GEO" | jq -r '.longitude')

# Step 3: Get current weather
WEATHER=$(curl -fsS \
"https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,relative_humidity_2m,apparent_temperature,wind_speed_10m&timezone=auto")

# Step 4: Extract weather information
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
FEELS=$(echo "$WEATHER" | jq -r '.current.apparent_temperature')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current.relative_humidity_2m')
WIND=$(echo "$WEATHER" | jq -r '.current.wind_speed_10m')
TIME=$(echo "$WEATHER" | jq -r '.current.time')

# Step 5: Display report
echo "Public IP : $IP"
echo "City      : $CITY"
echo "Region    : $REGION"
echo "Country   : $COUNTRY"
echo "----------------------------------"
echo "Temperature : $TEMP °C"
echo "Feels Like  : $FEELS °C"
echo "Humidity    : $HUMIDITY %"
echo "Wind Speed  : $WIND km/h"
echo "Local Time  : $TIME"
echo "=================================="
echo "Weather report completed!"
```

## 2. Execution Output
```text
==================================
       LOCAL WEATHER REPORT
==================================
Public IP : 49.36.234.31
City      : Jaipur
Region    : Rajasthan
Country   : India
----------------------------------
Temperature : 27.0 °C
Feels Like  : 27.2 °C
Humidity    : 42 %
Wind Speed  : 4.9 km/h
Local Time  : 2026-11-05T17:15
==================================
Weather report completed!
```
## 3. Vim Master Progress

Progress Code:
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzkzODc2MzI0OTcyLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsid193b3JkX2ZvcndhcmQiLCJsX3JpZ2h0IiwiaV9pbnNlcnRfbW9kZSIsImhfbGVmdCIsImpfZG93biIsImtfdXAiLCJiX3dvcmRfYmFja3dhcmQiLCJzZWFyY2hfZm9yd2FyZCIsInNlYXJjaF9uZXh0Iiwic2VhcmNoX2JhY2t3YXJkIiwic2VhcmNoX3ByZXZpb3VzIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=

Name: Smith Saini
Subject: Informatics and Communication Technology 

Through this assignment, I gained practical experience with:
- Shell scripting and command-line automation.
- Retreiving information from APIs using curl.
- Parsing JSON responses using jq.
- Editing files and navigating efficiently with VIM.
- Configuring SSH authentication with GitHub.
- Managing project versions using Git.

This Exercise helped me understand how thse tools work together in a Linux development environment.
