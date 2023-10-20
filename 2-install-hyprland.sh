#!/bin/bash

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------
source $(dirname "$0")/scripts/library.sh
echo ""

while true; do
    read -p "Start Installation? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            echo "Installing."
        break;;
        [Nn]* ) 
            exit;
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""

# ------------------------------------------------------
# Install required packages
# ------------------------------------------------------
echo ""
echo "-> Installing main packages"
packagesPacman=(
    "hyprland" 
    "xdg-desktop-portal-wlr" 
    "waybar" 
    "grim" 
    "slurp"
    "swappy"
    "cliphist"
);

packagesYay=(
    "swww" 
    "wlogout"
);

# ------------------------------------------------------
# Install required packages
# ------------------------------------------------------
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";

echo ""
echo "DONE! Please reboot your system!"
