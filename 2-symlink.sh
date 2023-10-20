#!/bin/bash
# ------------------------------------------------------
# Install Script for dotfiles and configuration
# yay must be installed
# ------------------------------------------------------

# ------------------------------------------------------
# Load Library
# ------------------------------------------------------
source $(dirname "$0")/scripts/installer.sh

echo "The script will create symbolic links from ~/dotfiles into your home and .config directories."

# ------------------------------------------------------
# Create .config folder
# ------------------------------------------------------
echo ""
echo "-> Check if .config folder exists"

if [ -d ~/.config ]; then
    echo ".config folder already exists."
else
    mkdir ~/.config
    echo ".config folder created."
fi

# ------------------------------------------------------
# Create symbolic links
# ------------------------------------------------------
# name symlink source target

echo ""
echo "-------------------------------------"
echo "-> Installing general dotfiles"
echo "-------------------------------------"
echo ""

_installSymLink alacritty ~/dotfiles/alacritty/ ~/.config/alacritty
_installSymLink vim ~/dotfiles/vim/ ~/.config/vim
_installSymLink nvim ~/dotfiles/nvim/ ~/.config/nvim
_installSymLink starship ~/dotfiles/starship/starship.toml ~/.config/starship.toml
_installSymLink rofi ~/dotfiles/rofi/ ~/.config/rofi
_installSymLink dunst ~/dotfiles/dunst/ ~/.config/dunst
_installSymLink wal ~/dotfiles/wal/ ~/.config/wal
wal -i screenshots/
echo "Pywal templates initiated!"
_installSymLink .gtkrc-2.0 ~/dotfiles/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
_installSymLink gtk-3.0 ~/dotfiles/gtk/gtk-3.0/ ~/.config/gtk-3.0
_installSymLink .Xresources ~/dotfiles/gtk/.Xresources ~/.Xresources
_installSymLink .icons ~/dotfiles/gtk/.icons/ ~/.icons
_installSymLink hypr ~/dotfiles/hypr/ ~/.config/hypr
_installSymLink waybar ~/dotfiles/waybar/ ~/.config/waybar
_installSymLink wlogout ~/dotfiles/wlogout/ ~/.config/wlogout
_installSymLink swappy ~/dotfiles/swappy/ ~/.config/swappy
_installSymLink ly ~/dotfiles/ly/config.ini ~/etc/ly/config.ini 
# ------------------------------------------------------
# DONE
# ------------------------------------------------------
echo "DONE! Please reboot your system!"
