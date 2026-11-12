#!/bin/bash
echo "=== Local Weather Report ==="
CITY=$(curl -s ipinfo.io/city)
echo "City: $CITY"
echo "Weather:"
curl -s "wttr.in/$CITY?format=3"
