# Lecture 4 -Shell, Vim and Git

## Task 1: Local Weather Report

### Script

```bash
#!/bin/bash

set -eu

location_data=$(curl -fsS https://ipinfo.io/json)

city=$(echo "$location_data" | jq -r '.city // empty')
country=$(echo "$location_data" | jq -r '.country // empty')

if [[ -z "$city" || -z "$country" ]]; then
    echo "Error: Could not determine your location."
    exit 1
fi

encoded_city=$(jq -rn --arg city "$city" '$city | @uri')


temperature=$(curl -fsS "https://wttr.in/${encoded_city}?format=%t")

echo "Local Weather Report"
echo "---------------------"
echo "Location: $city, $country"
echo "Current Temperature: $temperature"
```

### Script Output

```text
Local Weather Report
---------------------
Location: Halle (Saale), DE
Current Temperature: +3°C
```

