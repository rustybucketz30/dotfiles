#!/bin/bash


source $(dirname "$0")/scripts/library.sh
echo ""

# List of packages to be installed from pacman
pacman_packages=("firefox" "mpv" "newsboat" "obs" "gimp" "audacity" "vlc" "xorg-xrandr")

# List of packages to be installed from yay (AUR)
yay_packages=("discord" "vscodium" "shotcut" "kdenlive")

# Start the installation process
echo "Installing packages from pacman..."
_installPackagesPacman "${pacman_packages[@]}"

echo "Installing packages from yay (AUR)..."
_installPackagesYay "${yay_packages[@]}"

echo "Installation complete!"