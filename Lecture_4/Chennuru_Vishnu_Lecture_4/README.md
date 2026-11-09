## Script Source Code
```bash
#!/bin/bash

# Fetch location data based on public IP
LOCATION_JSON=$(curl -s https://ipinfo.io/json)
CITY=$(echo "$LOCATION_JSON" | jq -r '.city')
REGION=$(echo "$LOCATION_JSON" | jq -r '.region')
COUNTRY=$(echo "$LOCATION_JSON" | jq -r '.country')
LOC=$(echo "$LOCATION_JSON" | jq -r '.loc')

LAT=$(echo "$LOC" | cut -d',' -f1)
LON=$(echo "$LOC" | cut -d',' -f2)

echo "Location: $CITY, $REGION,$COUNTRY ($LAT,$LON)"

# Fetch current temperature using wttr.in in JSON format
WEATHER_JSON=$(curl -s "https://wttr.in/${CITY}?format=j1")
TEMP_C=$(echo "$WEATHER_JSON" | jq -r '.current_condition[0].temp_C')
CONDITION=$(echo "$WEATHER_JSON" | jq -r '.current_condition[0].weatherDesc[0].value')

echo "Current Temperature: ${TEMP_C}°C ($CONDITION)"
```

## Script Output
```text
Location: Rasapūdipalem, Andhra Pradesh,IN (17.7331,83.3162)
Current Temperature: 29°C (Partly Cloudy )
```
## VIM Master Progress Code
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MjI2ODI4OTgxLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJiX3dvcmRfYmFja3dhcmQiLCJ3X3dvcmRfZm9yd2FyZCIsInNlYXJjaF9mb3J3YXJkIiwic2VhcmNoX25leHQiLCJzZWFyY2hfYmFja3dhcmQiLCJzZWFyY2hfcHJldmlvdXMiXSwiY3VycmVudExldmVsIjoxNywiY2hhbGxlbmdlTW9kZSI6ZmFsc2UsImNoYWxsZW5nZVBvaW50cyI6MCwieHAiOjAsImNvbWJvIjowfQ==
