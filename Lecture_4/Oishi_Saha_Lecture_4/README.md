# Local Weather Report Script

LOCATION_JSON=$(curl -s https://ipinfo.io)
CITY=$(echo "$LOCATION_JSON" | grep -o '"city": "[^"]*' | cut -d'"' -f4)
COUNTRY=$(echo "$LOCATION_JSON" | grep -o '"country": "[^"]*' | cut -d'"' -f4)
echo "Detected Location: $CITY, $COUNTRY"
echo "Fetching current weather report..."
curl -s "wttr.in/${CITY}?format=1"
Detected Location: Nordhausen, DE
Fetching current weather report...
☀️  +6°C
VIM_MASTER_PROGRESS_eyJ2ZXJzaW9uIjoiMS4wIiwidGltZXN0YW1wIjoxNzk0MTcwMDUzNDA0LCJiYWRnZXMiOlsiYmVnaW5uZXIiLCJzZWFyY2htYXN0ZXIiXSwicHJhY3RpY2VkQ29tbWFuZHMiOlsiaF9sZWZ0Iiwial9kb3duIiwia191cCIsImxfcmlnaHQiLCJ3X3dvcmRfZm9yd2FyZCIsImJfd29yZF9iYWNrd2FyZCIsInNlYXJjaF9mb3J3YXJkIiwic2VhcmNoLWZvcndhcmQiLCJzZWFyY2hfbmV4dCIsInNlYXJjaC1iYWNrd2FyZCIsInNlYXJjaF9iYWNrd2FyZCIsInNlYXJjaF9wcmV2aW91cyIsIm5OIl0sImN1cnJlbnRMZXZlbCI6MTYsImNoYWxsZW5nZU1vZGUiOmZhbHNlLCJjaGFsbGVuZ2VQb2ludHMiOjAsInhwIjowLCJjb21ibyI6MH0=

This folder contains my Task 1 weather report script and its README file.

The weather.sh script detects my current location using the IP information service and retrieves the current weather report using wttr.in.

This assignment demonstrates the use of Git and GitHub for version control, including creating a fork, cloning a repository, committing changes, and submitting a pull request.

Student: Oishi Saha
Course: ICT – Hochschule Nordhausen
