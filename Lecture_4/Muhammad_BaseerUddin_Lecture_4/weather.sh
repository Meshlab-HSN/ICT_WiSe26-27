#!/bin/bash
echo " ==== Latitude, Longitude ===="
echo "$(curl -s ipinfo.io/loc)"
echo " ==== Weather Report ===="
echo " $(curl -s wttr.in/?format=4)"
