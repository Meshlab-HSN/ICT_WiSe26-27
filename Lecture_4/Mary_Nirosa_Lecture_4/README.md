#Local weather Report

##Bash Script
```bash
#!/bin/bash

#Get location using public IP address
location=$(curl -s https://ipwho.is/)

#Check location request
success=$(echo "$location" | jq -r '.success')

if [ "$success" != "true" ]; then
    echo "Could not retrieve location."
    exit 1
fi

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
latitude=$(echo "$location" | jq -r '.latitude')
longitude=$(echo "$location" | jq -r '.longitude')

#Get current weather
weather=$(curl -fsSG "https://api.open-meteo.com/v1/forecast" --data-urlencode "latitude=$latitude" --data-urlencode "longitude=$longitude" --data-urlencode "current=temperature_2m" --data-urlencode "timezone=auto")
temperature=$(echo "$weather" | jq -r '.current.temperature_2m')
unit=$(echo "$weather" | jq -r '.current_units.temperature_2m')

#Display weather report
echo "-----LOCAL WEATHER REPORT-----"
echo "City: $city"
echo "Country: $country"
echo "Latitude: $latitude"
echo "Longitude: $longitude"
echo "Current Temperature: $temperature $unit"
echo "-------------------------------"

##Execution Output
```text
-----LOCAL WEATHER REPORT-----
City: Nordhausen
Country: Germany
Latitude: 51.5017872
Longitude: 10.7956551
Current Temperature: 7.4 °C
-------------------------------
```

VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uljoiMS4wliwidGltZXN0YW1wljoxNzk0MjM1MDY5MjY2LCJiYWRnZXMiOlsiYmVnaW5uZXliLCJzZWFyY2htYXN0ZXliXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsid193b3JkX2ZvcndhcmQiLCJoX2xlZnQiLCJqX2Rvd24iLCJrX3VwliwibF9yaWdodClslmJfd29yZF9iYWNrd2FyZClslnNIYXJjaF9mb3J3YXJkliwic2VhcmNoX25leHQiLCJzZWFyY2hfYmFja3dhcmQiLCJzZWFyY2hfcHJldmlvdXMiXSwiY3VycmVudExldmVsljoxNywiY2hhbGxlbmdITW9kZSI6ZmFsc2UslmNoYWxsZW5nZVBvaW50cyl6MCwieHAiOjAslmNvbWJvljowfQ==

Lecture 4
This assignment demonstrates the use of Bash Scripting to retrieve the approximate location based on the public IP address and obtain the current temperature using the Open-Meteo API.
