#!/bin/bash
# Install Script for RustyBucketz30 Arch Linux
# ----------------------------------------------------------------------------------------- #
source $(dirname "$0")/scripts/installer.sh

# Check if yay is installed
# ----------------------------------------------------------------------------------------- #

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

echo "-> Installing main packages"
# ----------------------------------------------------------------------------------------- #
packagesPacman=(
    # Package Management & Utilities
    "pacman-contrib" # pacman utilities
    
    # Terminals & Shells
    "alacritty" # for terminal management
    "starship" # for CLI customization
    
    # Text Editors
    "neovim" 
    
    # Launchers & Notifications
    "rofi" # for launching applications
    "dunst" # for notifications
    
    # Desktop Customization
    "nitrogen" # for wallpapers
    "lxappearance" # for theming
    "breeze" # for theming
    "breeze-gtk" # for theming
    
    # File Management & Utilities
    "dolphin"
    "exa"
    "tumbler"
    "cliphist"
    
    # Fonts
    "ttf-font-awesome"
    "ttf-fira-sans"
    "ttf-fira-code"
    "ttf-firacode-nerd"
    
    # Programming & Development
    "python-pip" # for python stuff
    
    # Sound
    "pavucontrol" # for volume control
    
    # Desktop Integration
    "xdg-desktop-portal-gtk" # needed for theming
    "xdg-desktop-portal-wlr" # needed for theming

    # System Info Display
    "neofetch" # to flex
    "cmatrix" # for fun
    "btop" # for performance monitoring
    
    # wifi - network management
    "networkmanager" # for network management
    "network-manager-applet" # the GUI network manager
    "networkmanager-openvpn" # for VPNs
    "ufw" # firewall

    # Bluetooth
    "blueman"
    "bluez"
    "bluez-utils"

    # hyperland
    "hyprland" # window manager
    "waybar" # for status bar 
)

packagesYay=(
    # From the first script
    "pfetch" # to flex
    "bibata-cursor-theme" # cursor theme
    "kora-icon-theme" # icon theme

    # From the second script
    "swww" # for wallpapers
    "wlogout" # for logging out
)
# ----------------------------------------------------------------------------------------- #

# Install packages from official repositories and AUR
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";

# ----------------------------------------------------------------------------------------- #

# Install pywal
if [ -f /usr/bin/wal ]; then
    echo "pywal already installed."
else
    yay --noconfirm -S pywal
fi

# ----------------------------------------------------------------------------------------- #

# Install login prompt and init pywal
sudo cp ~/dotfiles/login/issue /etc/issue
wal -i ~/dotfiles/wallpapers/default.jpg

# ----------------------------------------------------------------------------------------- #
echo "Finished! Do a sudo reboot."
