#!/bin/bash

# Watch presentation mode changes and toggle xautolock
xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -m |
while read -r line; do
    PRESENT=$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode)
    PID=$(pidof xautolock)

    if [ -z "$PID" ]; then
        notify-send "xautolock not running"
        continue
    fi

    if [[ "$PRESENT" == "true" ]]; then
        kill -STOP "$PID"
        notify-send "xautolock paused"
    else
        kill -CONT "$PID"
        notify-send "xautolock resumed"
    fi
done

