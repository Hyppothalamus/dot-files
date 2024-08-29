#!/bin/env bash

status=$(playerctl status)

if [ $status = "Paused" ]; then
  echo "  $(playerctl metadata --format='{{ title }} - {{ artist }}')"
elif [ $status = "Playing" ]; then
  echo " $(playerctl metadata --format='{{ title }} - {{ artist }}')"
fi
