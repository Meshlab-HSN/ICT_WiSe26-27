# Lecture 4 - Local Weather Report
## Weather Script
```bash
#!/bin/bash

# Get location using public IP address
location=$(curl -fsS https://ipinfo.io/json)

city=$(echo "$location" | jq -r '.city')
country=$(echo "$location" | jq -r '.country')
coordinates=$(echo "$location" | jq -r '.loc')

# Extract latitude and longitude
latitude=$(echo "$coordinates" | cut -d',' -f1)
longitude=$(echo "$coordinates" | cut -d',' -f2)

# Get current temperature from Open-Meteo
weather=$(curl -fsS "https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current=temperature_2m")

temperature=$(echo "$weather" | jq -r '.current.temperature_2m')

echo "===== Local Weather Report ====="
echo "City: $city"
echo "Country: $country"
echo "Latitude: $latitude"
echo "Longitude: $longitude"
echo "Current Temperature: $temperature °C"
```

## Script Output
```text
===== Local Weather Report =====
City: Nordhausen
Country: DE
Latitude: 51.5018
Longitude: 10.7957
Current Temperature: 4.9 °C
```
## Vim Master Progress Code
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MzM3MTk3MTA0LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsial9kb3duIiwiaF9sZWZ0IiwiYl93b3JkX2JhY2t3YXJkIiwia191cCIsIndfd29yZF9mb3J3YXJkIiwibF9yaWdodCIsImlfaW5zZXJ0X21vZGUiLCJzZWFyY2hfZm9yd2FyZCIsInNlYXJjaF9uZXh0Iiwic2VhcmNoX2JhY2t3YXJkIiwic2VhcmNoX3ByZXZpb3VzIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=
## Lecture 4 Assignment
Name: Raja Harshitha Batchu
Course: ICT
This assignment demonstrates Linux shell scripting, vim text editing, and Git version control.
