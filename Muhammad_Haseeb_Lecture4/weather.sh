#!/bin/bash

# Fetch weather report for current IP location using wttr.in
curl -s "wttr.in?format=Location:+%l\nTemperature:+%t\nCondition:+%C\n"
