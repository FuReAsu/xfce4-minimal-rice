#!/bin/bash
# lock.sh

# Screenshot current desktop
scrot /tmp/screen.png

# Blur it
convert /tmp/screen.png -blur 0x6 /tmp/screen_blur.png

# Run i3lock-color
i3lock \
  -i /tmp/screen_blur.png \
  --inside-color=00000088 \
  --ring-color=88c0d0 \
  --line-color=00000000 \
  --keyhl-color=81a1c1 \
  --bshl-color=bf616a \
  --separator-color=00000000 \
  --time-color=eceff4 \
  --date-color=eceff4 \
  --layout-color=eceff4 \
  --clock --date-str="%A, %d %B" \
  --time-str="%H:%M:%S" \
  --indicator \
  --radius=130 \
  --ring-width=8

# Clean up
rm /tmp/screen*.png

