# Task 1 - Local Weather Report

## Bash Script
```bash
#!/bin/bash

set -e

echo "================================"
echo "       LOCAL WEATHER REPORT"
echo "================================"

# Get approximate location using public IP
location=$(curl -fsS https://ipapi.co/json/)

city=$(echo "$location" | jq -r '.city // empty')
region=$(echo "$location" | jq -r '.region // empty')
country=$(echo "$location" | jq -r '.country_name // empty')

if [ -z "$city" ]; then
    echo "Error: Could not detect your location."
    exit 1
fi

# Replace spaces with plus signs for the weather URL
city_url=$(echo "$city" | sed 's/ /+/g')

# Get weather information
weather=$(curl -fsS "https://wttr.in/${city_url}?format=j1")

temperature=$(echo "$weather" | jq -r \
'.current_condition[0].temp_C // empty')

condition=$(echo "$weather" | jq -r \
'.current_condition[0].weatherDesc[0].value // empty')

if [ -z "$temperature" ]; then
    echo "Error: Could not retrieve temperature."
    exit 1
fi

echo ""
echo "Location: $city, $region, $country"
echo "Temperature: ${temperature} °C"
echo "Weather: $condition"
echo ""
echo "================================"
echo "Weather report completed!"
```

## Execution Output
```text
================================
       LOCAL WEATHER REPORT
================================
```
## Task 2 - Vim Master Progress

Progress Code: VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MzIxMzc0MDQyLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaGprbCIsImhfbGVmdCIsImpfZG93biIsImtfdXAiLCJsX3JpZ2h0Iiwid2JlIiwid193b3JkX2ZvcndhcmQiLCJiX3dvcmRfYmFja3dhcmQiLCJnZ0ciLCIwJCIsImlhIiwiaV9pbnNlcnRfbW9kZSIsIngiLCJkZCIsImR3IiwieXlwIiwiY3ciLCJEIiwiciIsInNlYXJjaC1mb3J3YXJkIiwic2VhcmNoX2ZvcndhcmQiLCJzZWFyY2hfbmV4dCIsInNlYXJjaC1iYWNrd2FyZCIsInNlYXJjaF9iYWNrd2FyZCIsIm5OIiwidW5kby1yZWRvIiwiZXgiLCJzZWFyY2hfcHJldmlvdXMiXSwiY3VycmVudExldmVsIjoxNywiY2hhbGxlbmdlTW9kZSI6ZmFsc2UsImNoYWxsZW5nZVBvaW50cyI6MCwieHAiOjAsImNvbWJvIjowfQ==
