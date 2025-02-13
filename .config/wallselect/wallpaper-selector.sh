#!/bin/bash

WALLPAPER_DIR="$HOME/wallpaper"
CACHE_FILE="$HOME/.cache/hyprpaper.conf"

# Get list of wallpapers
mapfile -t wallpapers < <(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.webp" \))

# Check if wallpapers exist
if [ ${#wallpapers[@]} -eq 0 ]; then
  notify-send "No wallpapers found in $WALLPAPER_DIR"
  exit 1
fi

# Create wallpaper list for Rofi, include both file path and icon (same image)
wallpaper_list=""
for wallpaper in "${wallpapers[@]}"; do
  # Add the wallpaper path and set the image as the icon
  wallpaper_list+="$wallpaper\x00icon\x1f$wallpaper\n"
done

# Show wallpaper list in Rofi
chosen=$(echo -e "$wallpaper_list" | rofi -dmenu -i -p "Select Wallpaper" -config ~/.config/rofi/config-wallpaper.rasi)

# Exit if no selection
[ -z "$chosen" ] && exit 0

# Generate new config file
echo -e "preload = $chosen\nwallpaper = ,$chosen\nsplash = false" > "$CACHE_FILE"

# Restart Hyprpaper
pkill hyprpaper
hyprpaper -c "$CACHE_FILE" &

# Notify user
notify-send "Wallpaper Updated" "$chosen"
