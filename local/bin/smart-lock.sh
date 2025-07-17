#!/bin/bash

# Check if i3lock (used by betterlockscreen) is already running
if ! pgrep -x i3lock >/dev/null; then
    betterlockscreen -l
fi

