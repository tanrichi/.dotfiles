#!/bin/bash

layout_file="$HOME/.cache/kb_layout"
notif_icon="$HOME/.config/swaync/images/bell.png"

hyprctl switchxkblayout hfd.cn-usb-device 0
notify-send -u low -i "$notif_icon" "New kb_layout: English (Dvorak)"

echo "English (Dvorak)" >"$layout_file"
