#!/bin/bash
city_name=$(curl -sL --max-time 10 "https://ipinfo.io/json" |jq -r ' .city')
temp_val=$(curl -sL --max-time 10 "http://wttr.in/${city_name}?format=%t")
printf "Location: %s\n" "$city_name"
printf "Current Temperature:%s\n" "$temp_val"
__
Location: Nordhausen
Current Temperature:+8°C


## Task 2: VIM Master
### Progress Code:
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MTYwNjk0NzgyLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwibF9yaWdodCIsIndfd29yZF9mb3J3YXJkIiwiYl93b3JkX2JhY2t3YXJkIiwia191cCIsInNlYXJjaF9mb3J3YXJkIiwic2VhcmNoX25leHQiLCJzZWFyY2hfYmFja3dhcmQiLCJzZWFyY2hfcHJldmlvdXMiLCJpX2luc2VydF9tb2RlIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=
