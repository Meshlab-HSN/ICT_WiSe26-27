#!/usr/bin/env bash
set -eu
location=$(curl -fsS --max-time 20 'https://ipwho.is/')
city=$(jq -er .city <<< "$location")
lat=$(jq -er '.latitude | numbers' <<< "$location")
lon=$(jq -er '.longitude | numbers' <<< "$location")
weather=$(curl -fsS --max-time 20 "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current=temperature_2m&temperature_unit=celsius")
temp=$(jq -er '.current.temperature_2m | numbers' <<< "$weather")
printf 'Location: %s\nCurrent temperature: %s celsius\n' "$city" "$temp"
Location: Nordhausen
Current temperature: 4.2 celsius
vim Master Progress Code 
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MzEzNjYzNTAwLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsibF9yaWdodCIsImhfbGVmdCIsImpfZG93biIsIndfd29yZF9mb3J3YXJkIiwic2VhcmNoX2ZvcndhcmQiLCJzZWFyY2hfbmV4dCIsInNlYXJjaF9iYWNrd2FyZCIsInNlYXJjaF9wcmV2aW91cyIsImtfdXAiLCJpX2luc2VydF9tb2RlIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=
