Lecture 4 - Task 2: VIM Master

VIM Master completed: 18/18 levels
Progress: 100%

Progress Code:


VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MjQxMTE4ODIwLCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsial9kb3duIiwiaF9sZWZ0Iiwid193b3JkX2ZvcndhcmQiLCJiX3dvcmRfYmFja3dhcmQiLCJrX3VwIiwic2VhcmNoX2ZvcndhcmQiLCJzZWFyY2hfbmV4dCIsInNlYXJjaF9iYWNrd2FyZCJdLCJjdXJyZW50TGV2ZWwiOjE3LCJjaGFsbGVuZ2VNb2RlIjpmYWxzZSwiY2hhbGxlbmdlUG9pbnRzIjowLCJ4cCI6MCwiY29tYm8iOjB9

lecture 4 - Task 1: Script Output

#!/bin/bash
IP=$(curl -s https://api.ipify.org)
CITY=$(curl -s https://ipinfo.io/city)
echo "IP: $IP"
echo "City: $CITY"
curl -s "https://wttr.in/$CITY?format=3"


Output:
IP: 114.31.144.27
City: Bilimora
Bilimora: ☀️  +25°C

