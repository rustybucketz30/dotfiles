#!/bin/bash
source ~/dotfiles/scripts/installer.sh
clear

while true; do
    read -p "Update system? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ""
        break;;
        [Nn]* ) 
            exit;
        break;;
        * ) echo "Type 'y' or 'n'";;
    esac
done

yay

notify-send "Update complete"
