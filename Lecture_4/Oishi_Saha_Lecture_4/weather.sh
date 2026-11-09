
LOCATION_JSON=$(curl -s https://ipinfo.io)
CITY=$(echo "$LOCATION_JSON" | grep -o '"city": "[^"]*' | cut -d'"' -f4)
COUNTRY=$(echo "$LOCATION_JSON" | grep -o '"country": "[^"]*' | cut -d'"' -f4)
echo "Detected Location: $CITY, $COUNTRY"
echo "Fetching current weather report..."
curl -s "wttr.in/${CITY}?format=1"
