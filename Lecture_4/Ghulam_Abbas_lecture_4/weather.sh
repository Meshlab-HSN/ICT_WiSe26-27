#!/bin/bash
LOCATION_INFO=$(curl -s ipinfo.io/json)
CITY=$(echo "$LOCATION_INFO" | grep -i "city" | cut -d '"' -f 4)
COUNTRY=$(echo "$LOCATION_INFO" | grep -i "country" | cut -d '"' -f 4)

echo "Location: $CITY, $COUNTRY"
curl -s "wttr.in/$CITY?format=3"
