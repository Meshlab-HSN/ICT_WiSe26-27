
#!/bin/bash

URL="https://data.api.xweather.com/conditions/berlin%2Cgermany?client_id=T2lp289VAYQoi0OmNWAGo&client_secret=1DS1fs1YEifP5SBZyU7ByLpXHGXnIeuR7N5v52ih"
response=$(curl -s -f "$URL")

echo "$response" | jq -r '
.response[0] as $data |
$data.periods[0] as $weather |

"========== WEATHER REPORT ==========",
"Location       : \($data.place.name | ascii_upcase), \($data.place.country | ascii_upcase)",
"Date & Time    : \($weather.dateTimeISO)",
"------------------------------------",
"Condition      : \($weather.weather)",
"Temperature    : \($weather.tempC) °C",
"Feels Like     : \($weather.feelslikeC) °C",
"Humidity       : \($weather.humidity)%",
"Cloud Cover    : \($weather.sky)%",
"------------------------------------",
"Wind Speed     : \($weather.windSpeedKPH) km/h",
"Wind Direction : \($weather.windDir)",
"Wind Gust      : \($weather.windGustKPH) km/h",
"Visibility     : \($weather.visibilityKM) km",
"Pressure       : \($weather.pressureMB) hPa",
"Precipitation  : \($weather.precipMM) mm",
"UV Index       : \($weather.uvi)",
"===================================="
'
