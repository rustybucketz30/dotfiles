#!/bin/bash

# Select random wallpaper and create color scheme
wal -q -i ~/dotfiles/wallpapers/

# Load current pywal color scheme
source "$HOME/.cache/wal/colors.sh"

# Copy selected wallpaper into .cache folder
cp $wallpaper ~/.cache/current_wallpaper.jpg

# get wallpaper iamge name
newwall=$(echo $wallpaper | sed "s|$HOME/dotfiles/wallpapers/||g")

# Set the new wallpaper
swww img $wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type="random" \
    --transition-duration=0.7 \
    --transition-pos "$( hyprctl cursorpos )"

~/dotfiles/waybar/launch.sh

echo "DONE!"
