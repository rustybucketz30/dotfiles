#!/bin/sh
# toggles between colors and grayscale
sudo echo "toggling colors"
# # get current color scheme
# current=$(cat ~/.cache/wal/colors.sh | grep -o "#.*" | head -n 1)

# # get current wallpaper
# wallpaper=$(cat ~/.cache/wal/wal | grep -o "/.*" | head -n 1)

# # get current wallpaper name
# newwall=$(echo $wallpaper | sed "s|$HOME/dotfiles/wallpapers/||g")

# # make colors grayscale
# if [ "$current" = "#282828" ]; then
#     wal -q -i $wallpaper
#     source "$HOME/.cache/wal/colors.sh"
#     cp $wallpaper ~/.cache/current_wallpaper.jpg
#     swww img $wallpaper \
#         --transition-bezier .43,1.19,1,.4 \
#         --transition-fps=60 \
#         --transition-type="random" \
#         --transition-duration=0.7 \
#         --transition-pos "$( hyprctl cursorpos )"
#     ~/dotfiles/waybar/launch.sh
#     echo "DONE!"
# else
#     wal -q -i $wallpaper -g
#     source "$HOME/.cache/wal/colors.sh"
#     cp $wallpaper ~/.cache/current_wallpaper.jpg
#     swww img $wallpaper \
#         --transition-bezier .43,1.19,1,.4 \
#         --transition-fps=60 \
#         --transition-type="random" \
#         --transition-duration=0.7 \
#         --transition-pos "$( hyprctl cursorpos )"
#     ~/dotfiles/waybar/launch.sh
#     echo "DONE!"
# fi