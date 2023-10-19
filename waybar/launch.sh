#!/bin/sh
killall waybar

# ----------------------------------------------------- 
# Loading the configuration based on the username
# ----------------------------------------------------- 
if [[ $USER = "rusty" ]]
then
    waybar -c ~/dotfiles/waybar/config & -s ~/dotfiles/waybar/style.css  
else
    waybar &
fi 
