# Weather report
#!/bin/bash
loc=$(curl -s http://ip-api.com/json)
lat=$(echo "$loc" | jq -r ".lat")
lon=$(echo "$loc" | jq -r ".lon")
city=$(echo "$loc" | jq -r ".city")
temp=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true" | jq -r ".current_weather.temperature")
echo "Temperature in $city: $temp C"
Temperature in Leipzig: 3.2 C
This script gets my location from my IP address and shows the current temperature.
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0NjA4NDA4MzM4LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsid193b3JkX2ZvcndhcmQiLCJoX2xlZnQiLCJsX3JpZ2h0Iiwial9kb3duIiwiYl93b3JkX2JhY2t3YXJkIiwia191cCIsInNlYXJjaF9mb3J3YXJkIiwic2VhcmNoX25leHQiLCJzZWFyY2hfYmFja3dhcmQiLCJzZWFyY2hfcHJldmlvdXMiXSwiY3VycmVudExldmVsIjowLCJjaGFsbGVuZ2VNb2RlIjpmYWxzZSwiY2hhbGxlbmdlUG9pbnRzIjowLCJ4cCI6MCwiY29tYm8iOjB9
