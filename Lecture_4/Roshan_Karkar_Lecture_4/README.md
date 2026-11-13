## Script
#!/bin/bash
# Get location from IP address
LOC=$(curl -s https://ipinfo.io/json)
CITY=$(echo "$LOC" | jq -r '.city')
COUNTRY=$(echo "$LOC" | jq -r '.country')
COORDS=$(echo "$LOC" | jq -r '.loc')
LAT=${COORDS%,*}
LON=${COORDS#*,}

# Get current temperature for that location
TEMP=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$LAT&longitude=$LON&current_weather=true" | jq -r '.current_weather.temperature')

echo "City:        $CITY"
echo "Country:     $COUNTRY"
echo "Latitude:    $LAT"
echo "Longitude:   $LON"
echo "Temperature: $TEMP °C"

## Output
City:        Lauchhammer
Country:     DE
Latitude:    51.4881
Longitude:   13.7662
Temperature: 3.9 °C
## VIM Master Progress Code
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzkzOTc5MTA2Nzg5LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsid193b3JkX2ZvcndhcmQiLCJqX2Rvd24iLCJsX3JpZ2h0Iiwic2VhcmNoX2ZvcndhcmQiLCJzZWFyY2hfbmV4dCIsInNlYXJjaF9iYWNrd2FyZCIsInNlYXJjaF9wcmV2aW91cyIsImhfbGVmdCIsImJfd29yZF9iYWNrd2FyZCJdLCJjdXJyZW50TGV2ZWwiOjE3LCJjaGFsbGVuZ2VNb2RlIjpmYWxzZSwiY2hhbGxlbmdlUG9pbnRzIjowLCJ4cCI6MCwiY29tYm8iOjB9
