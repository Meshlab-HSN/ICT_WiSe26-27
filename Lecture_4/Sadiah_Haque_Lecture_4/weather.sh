echo ''Fetching my location and current weather...''
curl -s "wttr.in/?format=j1" | jq '.current_condition[0]| {temperature: .temp_C, condition: .weatherDesc[0].value}'
