#!/usr/bin/env bash

monitor_num="$(xrandr | grep -c 'connected')"
if [[ "$monitor_num" = "2" ]]; then
  xrandr --output HDMI-A-0 --mode 1920x1080 --rate 74.97 --primary
  xrandr --output eDP --off
else
  xrandr --output eDP --auto --primary
fi
