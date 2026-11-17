LOCATION_INFO=$(curl -s https://ipinfo.io)
CITY=$(echo "$LOCATION_INFO" | jq -r '.city')
COUNTRY=$(echo "$LOCATION_INFO" | jq -r '.country')

echo "Location: $CITY, $COUNTRY"
curl -s "https://wttr.in/$CITY?format=3"
