#!/bin/bash
CITY=$(curl -s http://ip-api.com/json | sed -E 's/.*"city":"([^"]+)".*/\1/')
TEMP=$(curl -s "wttr.in/${CITY// /+}?format=%t")
echo "Location: $CITY"
echo "Current Temperature: $TEMP"
