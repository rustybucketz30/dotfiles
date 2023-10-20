#!/bin/bash
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

