#!/bin/bash
#  ____                                                    
# |  _ \ _____      _____ _ __ _ __ ___   ___ _ __  _   _  
# | |_) / _ \ \ /\ / / _ \ '__| '_ ` _ \ / _ \ '_ \| | | | 
# |  __/ (_) \ V  V /  __/ |  | | | | | |  __/ | | | |_| | 
# |_|   \___/ \_/\_/ \___|_|  |_| |_| |_|\___|_| |_|\__,_| 
#                                                          
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

option1="  logout"
option2="  reboot"
option3="  power off"

options="$option1\n"
options="$options$option2\n"
options="$options$option2\n$option3"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -l 4 -width 30 -p "Powermenu") 

case $choice in
	$option1)
		hyprctl dispatch exit ;;
	$option2)
		systemctl reboot ;;
	$option3)
		systemctl poweroff ;;
esac

