# Lecture 4 - Task 1: Local weather report

## Script (cat weather.sh)
```bash
#!/bin/bash
# IP
loc=$(curl -s http://ip-api.com/json/)
city=$(echo "$loc" | jq -r '.city')
lat=$(echo "$loc" | jq -r '.lat')
lon=$(curl -s "http://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true" | jq -r '.current_weather.temperature')
echo "Current temperature in $city: ${temp}C"
```

## Output (./weather.sh)
```
Current temperature in Faisalabad: C
```

## Vim Master Progress Code
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0NDAxNTAzMDg4LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJ3X3dvcmRfZm9yd2FyZCIsImlfaW5zZXJ0X21vZGUiLCJiX3dvcmRfYmFja3dhcmQiLCJzZWFyY2hfZm9yd2FyZCIsInNlYXJjaF9uZXh0Iiwic2VhcmNoX2JhY2t3YXJkIiwic2VhcmNoX3ByZXZpb3VzIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=
This lecture I learned Shell, Vim and Git.
