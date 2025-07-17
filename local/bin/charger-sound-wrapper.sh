#!/bin/bash

USER="fureasu"
DISPLAY=":0"
XAUTHORITY="/home/$USER/.Xauthority"
XDG_RUNTIME_DIR="/run/user/$(id -u $USER)"

# Sound files (you can change these!)
PLUG_SOUND="/home/$USER/.local/share/sounds/power-plug.ogg"
UNPLUG_SOUND="/home/$USER/.local/share/sounds/power-unplug.ogg"

case "$1" in
  plug)
    sleep 0.5
    SOUND="$PLUG_SOUND"
    ;;
  unplug)
    sleep 0.5
    SOUND="$UNPLUG_SOUND"
    ;;
  *)
    exit 1
    ;;
esac

# Run as the desktop user
sudo -u $USER DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR canberra-gtk-play -f "$SOUND"

