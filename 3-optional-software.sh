#!/bin/bash


source $(dirname "$0")/scripts/installer.sh
echo ""

# List of packages to be installed from pacman
pacman_packages=("firefox" "mpv" "newsboat" "obs" "gimp" "audacity" "vlc" "xorg-xrandr", "keepassxc")

# piper, libratbag, and ratbagd are for configuring the Logitech G502 mouse, x810-cfg is for the Logitech G810 keyboard and xbindkeys is for binding keys to commands

# networkmanager, network-manager-applet, and networkmanager-openvpn are for managing network connections

# xorg-xrandr is for configuring monitors

# xorg-xinput is for configuring input devices

# xorg-xbacklight is for configuring screen brightness

# xorg-xprop is for configuring window borders

# xorg-xsetroot is for configuring the root window

# xorg-xset is for configuring the Xorg server -no?

# xorg-xmodmap is for configuring keyboard layouts - no?

# List of packages to be installed from yay (AUR)
yay_packages=("discord" "vscodium" "shotcut" "kdenlive")

# Start the installation process
echo "Installing packages from pacman..."
_installPackagesPacman "${pacman_packages[@]}"

echo "Installing packages from yay (AUR)..."
_installPackagesYay "${yay_packages[@]}"

echo "Installation complete!"