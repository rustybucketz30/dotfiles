#!/bin/bash
# Install Script for required packages
# ------------------------------------------------------------------------------ #

# ------------------------------------------------------------------------------ #
# Load Library
# ------------------------------------------------------------------------------ #
source $(dirname "$0")/scripts/library.sh
clear
echo ""

# ------------------------------------------------------------------------------ #
# Check if yay is installed
# ------------------------------------------------------------------------------ #
if sudo pacman -Qs yay > /dev/null ; then
    echo "yay is installed. You can proceed with the installation"
else
    echo "yay is not installed. Will be installed now!"
    git clone https://aur.archlinux.org/yay-git.git ~/yay-git
    cd ~/yay-git
    makepkg -si
    cd ~/dotfiles/
    clear
    echo "yay has been installed successfully."
    echo ""
fi

# ------------------------------------------------------------------------------ #
# Install required packages
# ------------------------------------------------------------------------------ #
echo "-> Installing main packages"

packagesPacman=(
    # Package Management & Utilities
    "pacman-contrib"
    
    # Terminals & Shells
    "alacritty"
    "starship"
    
    # Text Editors
    "neovim"
    
    # Launchers & Notifications
    "rofi"
    "dunst"
    
    # Desktop Customization
    "nitrogen"
    "lxappearance"
    "breeze"
    "breeze-gtk"
    
    # File Management & Utilities
    "dolphin"
    "exa"
    "tumbler"
    
    # Fonts
    "ttf-font-awesome"
    "ttf-fira-sans"
    "ttf-fira-code"
    "ttf-firacode-nerd"
    
    # Power Management
    "xfce4-power-manager"
    
    # Programming & Development
    "python-pip"
    
    # Sound
    "pavucontrol"
    
    # Desktop Integration
    "xdg-desktop-portal-gtk"
    
    # System Info Display
    "neofetch"
    "btop"
    
    # Bluetooth
    "blueman"
    "bluez"
    "bluez-utils"
);

packagesYay=(
    "pfetch" 
    "bibata-cursor-theme" 
    "kora-icon-theme"
);
  
# Install packages from official repositories and AUR
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";

# ------------------------------------------------------------------------------ #
# Install pywal
# ------------------------------------------------------------------------------ #
if [ -f /usr/bin/wal ]; then
    echo "pywal already installed."
else
    yay --noconfirm -S pywal
fi

# ------------------------------------------------------------------------------ #
# Install .bashrc
# ------------------------------------------------------------------------------ #
echo "-> Install .bashrc"

_installSymLink .bashrc ~/.bashrc ~/dotfiles/.bashrc ~/.bashrc
sudo cp ~/dotfiles/login/issue /etc/issue
echo "Login prompt installed."

wal -i ~/dotfiles/wallpapers/default.jpg # Init pywal


# ------------------------------------------------------------------------------ #
# DONE
# ------------------------------------------------------------------------------ #
echo "DONE!"
