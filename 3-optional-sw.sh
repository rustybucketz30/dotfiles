#!/bin/bash
source $(dirname "$0")/scripts/installer.sh
# ----------------------------------------------------------------------------------------- #

# List of packages to be installed from pacman
pacman_packages=("firefox" "mpv" "newsboat" "obs" "gimp" "audacity" "vlc" "xorg-xrandr", "keepassxc", "xorg-xinput", "xorg-xbacklight", "piper", "libratbag", "qemu", "virtmanager")

# List of packages to be installed from yay (AUR)
yay_packages=("discord" "vscodium")

# Start the installation process
echo "Installing packages from pacman..."
_installPackagesPacman "${pacman_packages[@]}"

echo "Installing packages from yay (AUR)..."
_installPackagesYay "${yay_packages[@]}"

echo "Installation complete!"
