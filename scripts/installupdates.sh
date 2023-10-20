#!/bin/bash

sleep 1
source ~/dotfiles/scripts/library.sh
clear

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

while true; do
    read -p "Update system? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo ""
        break;;
        [Nn]* ) 
            exit;
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "-----------------------------------------------------"
echo "Start update"
echo "-----------------------------------------------------"
echo ""

yay

notify-send "Update complete"
