#!/bin/sh
xrandr --output HDMI2 --off --output HDMI1 --off --output DP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
nitrogen --restore
