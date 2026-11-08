# Task 1: Local Weather Report

Task 4 comleted by Ronak Panchal.
## Script Content
#!/bin/bash
CITY=$(curl -s http://ip-api.com/json | sed -E 's/.*"city":"([^"]+)".*/\1/')
TEMP=$(curl -s "wttr.in/${CITY// /+}?format=%t")
echo "Location: $CITY"
echo "Current Temperature: $TEMP"

## Script Output
Location: Nordhausen
Current Temperature: +5°C
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MDUxNjc2NjkxLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJ3X3dvcmRfZm9yd2FyZCIsImJfd29yZF9iYWNrd2FyZCIsImlfaW5zZXJ0X21vZGUiLCJzZWFyY2hfZm9yd2FyZCIsInNlYXJjaF9uZXh0Iiwic2VhcmNoX2JhY2t3YXJkIiwic2VhcmNoX3ByZXZpb3VzIl0sImN1cnJlbnRMZXZlbCI6MTcsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=
