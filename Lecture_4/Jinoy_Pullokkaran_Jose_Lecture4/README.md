# Lecture 4 - Task 1: Local Weather Report

## Weather Script

bash
#!/bin/bash

location=$(curl -s https://ipinfo.io/json)

city=$(echo "$location" | jq -r '.city')
region=$(echo "$location" | jq -r '.region')
country=$(echo "$location" | jq -r '.country')

weather=$(curl -s "https://wttr.in/$city?format=j1")

temperature=$(echo "$weather" | jq -r '.current_condition[0].temp_C')
feels_like=$(echo "$weather" | jq -r '.current_condition[0].FeelsLikeC')
description=$(echo "$weather" | jq -r '.current_condition[0].weatherDesc[0].value')

echo "LOCAL WEATHER REPORT"
echo "--------------------"
echo "Location: $city, $region, $country"
echo "Temperature: $temperature°C"
echo "Feels like: $feels_like°C"
echo "Weather: $description"



## Script Output

text
LOCAL WEATHER REPORT
--------------------
Location: Lauchhammer, Brandenburg, DE
Temperature: 3°C
Feels like: 0°C
Weather: Clear 

## VIM Master Progress

Progress: 18/18 levels completed

Progress Code: VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MDg0NTYyMjQzLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsial9kb3duIiwibF9yaWdodCIsImtfdXAiLCJoX2xlZnQiLCJ3X3dvcmRfZm9yd2FyZCIsImJfd29yZF9iYWNrd2FyZCIsInNlYXJjaF9mb3J3YXJkIiwic2VhcmNoX25leHQiLCJzZWFyY2hfYmFja3dhcmQiXSwiY3VycmVudExldmVsIjoxNywiY2hhbGxlbmdlTW9kZSI6ZmFsc2UsImNoYWxsZW5nZVBvaW50cyI6MCwieHAiOjAsImNvbWJvIjowfQ==
