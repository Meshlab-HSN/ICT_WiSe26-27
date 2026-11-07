#!/bin/bash

# Local Weather Report
# Detect location using public IP and retrieve current temperature.

set -e

echo "=================================="
echo "       LOCAL WEATHER REPORT"
echo "=================================="

# Step 1: Get location details directly via ip-api.com (No rate-limit issue)
GEO=$(curl -s "http://ip-api.com/json/")

CITY=$(echo "$GEO" | jq -r '.city')
REGION=$(echo "$GEO" | jq -r '.regionName')
COUNTRY=$(echo "$GEO" | jq -r '.country')
LAT=$(echo "$GEO" | jq -r '.lat')
LON=$(echo "$GEO" | jq -r '.lon')
IP=$(echo "$GEO" | jq -r '.query')

# Step 2: Get current weather from open-meteo
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,relative_humidity_2m,apparent_temperature,wind_speed_10m&timezone=auto")

# Step 3: Extract weather information
TEMP=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
FEELS=$(echo "$WEATHER" | jq -r '.current.apparent_temperature')
HUMIDITY=$(echo "$WEATHER" | jq -r '.current.relative_humidity_2m')
WIND=$(echo "$WEATHER" | jq -r '.current.wind_speed_10m')
TIME=$(echo "$WEATHER" | jq -r '.current.time')

# Step 4: Display report
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

### Script Execution Output:

==================================
       LOCAL WEATHER REPORT
==================================
Public IP : 93.251.191.7
City      : Nordhausen
Region    : Thuringia
Country   : Germany
----------------------------------
Temperature : 4.1 °C
Feels Like  : 1.4 °C
Humidity    : 86 %
Wind Speed  : 6.3 km/h
Local Time  : 2026-11-07T15:00
==================================
Weather report completed!
### VIM Master Progress Code:VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MDY4Mjc5NjQ5LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsid193b3JkX2ZvcndhcmQiLCJoX2xlZnQiLCJqX2Rvd24iLCJrX3VwIiwibF9yaWdodCIsImJfd29yZF9iYWNrd2FyZCIsImlfaW5zZXJ0X21vZGUiLCJ4Iiwic2VhcmNoX2ZvcndhcmQiLCJzZWFyY2hfbmV4dCIsInNlYXJjaF9iYWNrd2FyZCIsInNlYXJjaF9wcmV2aW91cyJdLCJjdXJyZW50TGV2ZWwiOjE3LCJjaGFsbGVuZ2VNb2RlIjpmYWxzZSwiY2hhbGxlbmdlUG9pbnRzIjowLCJ4cCI6MCwiY29tYm8iOjB9
All 18 levels of VIM Master have been successfully completed.

