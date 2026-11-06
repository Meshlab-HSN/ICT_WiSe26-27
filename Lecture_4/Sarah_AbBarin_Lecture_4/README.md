# Local Weather Report

## Script
#!/bin/bash

echo "===== LOCAL WEATHER REPORT ====="

# Get location information from the public IP address
LOCATION=$(curl -s https://ipwho.is/)

# Check whether the location request was successful
SUCCESS=$(echo "$LOCATION" | jq -r '.success')

if [ "$SUCCESS" != "true" ]; then
    echo "Could not determine your location."
    exit 1
fi

CITY=$(echo "$LOCATION" | jq -r '.city')
REGION=$(echo "$LOCATION" | jq -r '.region')
COUNTRY=$(echo "$LOCATION" | jq -r '.country')
LAT=$(echo "$LOCATION" | jq -r '.latitude')
LON=$(echo "$LOCATION" | jq -r '.longitude')

echo "Location: $CITY, $REGION, $COUNTRY"

# Get current weather using the location coordinates
WEATHER=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current=temperature_2m")

TEMPERATURE=$(echo "$WEATHER" | jq -r '.current.temperature_2m')
UNIT=$(echo "$WEATHER" | jq -r '.current_units.temperature_2m')

echo "Current temperature: $TEMPERATURE $UNIT"

echo "================================"

## Execution Output
===== LOCAL WEATHER REPORT =====

Location: Nordhausen, Thuringia, Germany
Current temperature: 6.6 °C
================================
## VIM Master Progress Code
M_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzkzODk5NTYyMjc3LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJ3X3dvcmRfZm9yd2FyZCIsImJfd29yZF9iYWNrd2FyZCIsImlfaW5zZXJ0X21vZGUiLCJzZWFyY2hfYmFja3dhcmQiLCJzZWFyY2hfZm9yd2FyZCIsInNlYXJjaF9uZXh0Il0sImN1cnJlbnRMZXZlbCI6MCwiY2hhbGxlbmdlTW9kZSI6ZmFsc2UsImNoYWxsZW5nZVBvaW50cyI6MCwieHAiOjAsImNvbWJvIjowfQ==


## About This Project

This project was created as part of Lecture 4 (Shell, Vim and Git)
at Hochschule Nordhausen.

The Bash script uses curl to retrieve location information based
on the public IP address. It then uses the Open-Meteo API to
retrieve the current temperature based on geographical coordinates.

The script uses jq to process JSON responses and display the
location and current temperature in a readable format.

## Tools and Technologies

- Bash
- Linux Shell
- curl
- jq
- Open-Meteo API
- Git and GitHub
- Vim

## Author

Sarah Ab Barin
Computer Engineering for IoT Systems
Hochschule Nordhausen
