# Local weather report

## Script: manthan_weather.sh
```bash
#!/bin/bash

location=$(curl -s http://ip-api.com/json/)

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
lat=$(echo "$location" | jq -r '.lat')
lon=$(echo "$location" | jq -r '.lon')

weather=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current_weather=true")

temp=$(echo "$weather" | jq -r '.current_weather.temperature')

echo "Location: $city, $country"
echo "Current temperature: ${temp}°C"
```

## Output
```
Location: Lauchhammer, Germany
Current temperature: 2.8°C
```
## Vim Master Progress Code
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MDAzNjEzMDQxLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJpX2luc2VydF9tb2RlIiwid193b3JkX2ZvcndhcmQiLCJiX3dvcmRfYmFja3dhcmQiLCJzZWFyY2hfZm9yd2FyZCIsInNlYXJjaF9uZXh0Iiwic2VhcmNoX2JhY2t3YXJkIiwic2VhcmNoX3ByZXZpb3VzIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=

## Vim Master Completion

I completed X of 18 levels of the Vim Master game and practised basic Vim commands, including navigation, insertion, deletion, searching, copying and pasting.

## Weather Script

The weather script uses curl to get my location from my public IP address. It uses jq to extract the city, country and coordinates, and Open-Meteo to get the current temperature.

