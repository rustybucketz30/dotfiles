#!/bin/bash
source $(dirname "$0")/scripts/installer.sh
echo "This script creates symlinks between ~/dotfiles and ~/.config directories."
echo "-> Checking if ~/.config exists"
# ----------------------------------------------------------------------------------------- #

if [ -d ~/.config ]; then
    echo ".config folder already exists."
else
    mkdir ~/.config
    echo ".config folder created."
fi


echo "-> Installing general dotfiles"
# ----------------------------------------------------------------------------------------- #

_installSymLink .basrc ~/dotfiles/.bashrc ~/.config/.bashrc
_installSymLink alacritty ~/dotfiles/alacritty/ ~/.config/alacritty
_installSymLink vim ~/dotfiles/vim/ ~/.config/vim
_installSymLink nvim ~/dotfiles/nvim/ ~/.config/nvim
_installSymLink dolphinrc ~/dotfiles/dolphin/dolphinrc ~/.config/dolphinrc
_installSymLink dolphinviewrc ~/dotfiles/dolphin/dolphinviewrc ~/.config/dolphinviewrc
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

# ----------------------------------------------------------------------------------------- #

echo "DONE! Please reboot your system!"
