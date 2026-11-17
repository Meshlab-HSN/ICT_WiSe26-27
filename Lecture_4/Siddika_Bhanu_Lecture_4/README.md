# Lecture 4 Assignment
## Task 1: Local Weather Script
bash
#!/bin/bash
CITY=$(curl -s https://ipinfo.io)
TEMP=$(curl -s "https://wttr.in{CITY}?format=%t")
echo "Location: $CITY"
echo "Current Temperature: $TEMP"

### Output
Location: {
  "ip": "91.216.197.7",
  "hostname": "pool-91-7.cgn.as205582.de",
  "city": "Lauchhammer",
  "region": "Brandenburg",
  "country": "DE",
  "loc": "51.4881,13.7662",
  "org": "AS205582 LKG Lausitzer Kabelbetriebsgesellschaft mbH",
  "postal": "01979",
  "timezone": "Europe/Berlin",
  "readme": "https://ipinfo.io/missingauth"
}
Current Temperature: 

## Task 2: VIM Master Progress Code

VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0OTQwMTAzNDIzLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJ3X3dvcmRfZm9yd2FyZCIsImJfd29yZF9iYWNrd2FyZCIsImlfaW5zZXJ0X21vZGUiLCJpYSIsInNlYXJjaF9mb3J3YXJkIiwic2VhcmNoX25leHQiLCJzZWFyY2hfYmFja3dhcmQiLCJzZWFyY2hfcHJldmlvdXMiXSwiY3VycmVudExldmVsIjoxNywiY2hhbGxlbmdlTW9kZSI6ZmFsc2UsImNoYWxsZW5nZVBvaW50cyI6MCwieHAiOjAsImNvbWJvIjowfQ==
In this assignment, I automated local weather lookup with bash and curl, practiced Vim commands, and submitted my work via Git and GitHub.
