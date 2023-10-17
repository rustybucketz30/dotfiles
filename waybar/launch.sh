#!/bin/sh
killall waybar

# ----------------------------------------------------- 
# Loading the configuration based on the username
# ----------------------------------------------------- 
if [[ $USER = "raabe" ]]
then
    waybar -c ~/dotfiles/waybar/myconfig & -s ~/dotfiles/waybar/style.css  
else
    waybar &
fi 
