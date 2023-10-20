#!/bin/bash
# ------------------------------------------------------
# Install Script for dotfiles and configuration
# yay must be installed
# ------------------------------------------------------

# ------------------------------------------------------
# Load Library
# ------------------------------------------------------
source $(dirname "$0")/scripts/library.sh

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

_installSymLink alacritty ~/.config/alacritty ~/dotfiles/alacritty/ ~/.config
_installSymLink ranger ~/.config/ranger ~/dotfiles/ranger/ ~/.config
_installSymLink vim ~/.config/vim ~/dotfiles/vim/ ~/.config
_installSymLink nvim ~/.config/nvim ~/dotfiles/nvim/ ~/.config
_installSymLink starship ~/.config/starship.toml ~/dotfiles/starship/starship.toml ~/.config/starship.toml
_installSymLink rofi ~/.config/rofi ~/dotfiles/rofi/ ~/.config
_installSymLink dunst ~/.config/dunst ~/dotfiles/dunst/ ~/.config
_installSymLink wal ~/.config/wal ~/dotfiles/wal/ ~/.config
wal -i screenshots/
echo "Pywal templates initiated!"

echo ""
echo "-------------------------------------"
echo "-> Installing GTK dotfiles"
echo "-------------------------------------"
echo ""

_installSymLink .gtkrc-2.0 ~/.gtkrc-2.0 ~/dotfiles/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
_installSymLink gtk-3.0 ~/.config/gtk-3.0 ~/dotfiles/gtk/gtk-3.0/ ~/.config/
_installSymLink .Xresouces ~/.Xresources ~/dotfiles/gtk/.Xresources ~/.Xresources
_installSymLink .icons ~/.icons ~/dotfiles/gtk/.icons/ ~/

echo "-------------------------------------"
echo "-> Installing Hyprland dotfiles"
echo "-------------------------------------"
echo ""

_installSymLink hypr ~/.config/hypr ~/dotfiles/hypr/ ~/.config
_installSymLink waybar ~/.config/waybar ~/dotfiles/waybar/ ~/.config
_installSymLink wlogout ~/.config/wlogout ~/dotfiles/wlogout/ ~/.config
_installSymLink swappy ~/.config/swappy ~/dotfiles/swappy/ ~/.config
_installSymLink ly ~/etc/ly/config.ini ~/dotfiles/ly/config.ini ~/etc
# ------------------------------------------------------
# DONE
# ------------------------------------------------------
echo "DONE! Please reboot your system!"
