#!/bin/bash
city_name=$(curl -sL --max-time 10 "https://ipinfo.io/json" |jq -r ' .city')
temp_val=$(curl -sL --max-time 10 "http://wttr.in/${city_name}?format=%t")
printf "Location: %s\n" "$city_name"
printf "Current Temperature:%s\n" "$temp_val"
__
Location: Nordhausen
Current Temperature:+8°C
