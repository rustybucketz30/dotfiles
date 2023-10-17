# RustyBucketz30 Arch Linux Desktop Dotfiles

<!-- Show what it actually looks like here -->
```
                                                                                 ##########       
                                                                              ###+++-------###    
                                                                            ##+****+++++*****+##  
  _____           _         ____             _        _       ____   ___    #####**++++++**#####  
 |  __ \         | |       |  _ \           | |      | |     |___ \ / _ \   ##.--##########++=##  
 | |__) |   _ ___| |_ _   _| |_) |_   _  ___| | _____| |_ ____ __) | | | |  ##......----=++++=##  
 |  _  / | | / __| __| | | |  _ <| | | |/ __| |/ / _ \ __|_  /|__ <| | | |  ##......----=++++-##  
 | | \ \ |_| \__ \ |_| |_| | |_) | |_| | (__|   <  __/ |_ / / ___) | |_| |  ##-.....----=++++-##  
 |_|  \_\__,_|___/\__|\__, |____/ \__,_|\___|_|\_\___|\__/___|____/ \___/   ##+.....----=++++=##  
                      __/ |                                                   #--...--===++==#    
                     |___/                                                     ##--.--==+==##     
                                                                                 ##########       
```
## Table of Contents
1. [Firmware/Hardware Configuration](#1-firmwarehardware-configuration)
2. [Software](#2-software)
3. [Directory Structure](#3-directory-structure)
4. [Additional Software and Dependencies](#4-additional-software-and-dependencies)
5. [Keybindings](#5-keybindings)
6. [Themes, Icons & Cursors](#6-themes-icons--cursors)
7. [Installation](#7-installation)
8. [Inspiration & References](#8-inspiration--references)

## 1. Firmware/Hardware Configuration

### Partitioning & OS Installation:
- **250GB SSD:**
    - Windows: 150GB (NTFS)
    - Arch Linux:
        - EFI: 512MB (FAT32)
        - Root (/): 30GB (Ext4)
        - Swap: Match RAM or min. 4GB
        - Home (/home): Remaining space (Ext4)
- **1TB HDD:** Mix of NTFS and Ext4, based on access needs.
- **8TB HDD:** NTFS for cross-OS access
- **2TB External HDD:** NTFS for portability.

## 2. Software
| Category               | Software               | Link                                          |
|------------------------|------------------------|-----------------------------------------------|
| Window Manager         | Hyprland               | [Website](https://hyprland.org/)              |
| Terminal Manager       | kitty                  | [Website](https://sw.kovidgoyal.net/kitty/)   |
| File Manager           | Dolphin                | [GitHub](https://github.com/KDE/dolphin)      |
| Status Bar             | eww                    | [GitHub](https://github.com/elkowar/eww)      |
| Launcher               | Rofi                   | [GitHub](https://github.com/davatorium/rofi)  |
| Shell                  | zsh, w/ OhMyZsh        | [GitHub](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) |
| Browser                | Firefox                | [Website](https://www.mozilla.org/en-US/firefox/new/) |
| Session Manager        | Wlogout                | [GitHub](https://github.com/ArtsyMacaw/wlogout) |
| Text Editor            | neovim                 | [Website](https://neovim.io/)                 |
| Font                   | Iosevka - Monospace    | [Website](https://typeof.net/Iosevka/)        |
| Themes, Cursors, & Icons| [to be determined]    |                                               |
| Cursor                 | Apple Cursor           | [GitHub](https://github.com/ful1e5/apple_cursor) |

*See [Appendix](#8-appendix--inspiration) for additional software and configurations.*

## 3. Directory Structure

```
dotfiles/
│
├── hyprland/
│   ├── hyprland.conf
│   └── themes/
│
├── kitty/
│   └── kitty.conf
│
├── dolphin/
│   └── dolphin.conf
│
├── eww/
│   ├── config.yaml
│   └── scripts/
│
├── rofi/
│   ├── config.rasi
│   └── themes/
│
├── zsh/
│   └── .zshrc
│
├── wlogout/
│   └── config
│
├── nvim/
│   └── init.vim
│
├── firefox/
│   └── userChrome.css  # If you plan to style Firefox
│
├── fonts/
│   ├── nerd-fonts-mononoki/
│   └── nerd-fonts-jetbrains-mono/
│
└── scripts/
    ├── install.sh
    └── symlink.sh

```
## 4. Software List & Dependencies

### Dependencies: 
Essential libraries and tools required to ensure a smooth experience with the configurations and setups.

- **Essential**: `lxappearance`, ...
- **Optional**: [Additional dependencies or alternatives]

### Configuration-type Software:
Tools used to setup, configure, and manage various aspects of the system.

- `gparted`, `grub`, `networkmanager`, `pacman`, `yay`, `htop`, `git`, ...
gparted, grub, networkmanager, pacman, yay, htop, git, piper, ufw, rsync, piper, libratbag, g810-led, xbindkeys, python, java, pip, timeshift,
  
### GUI Software:
A collection of various GUI-based software for multiple purposes.

other GUI software I use: ccrypt, GnuPG,  mpv, vlc, newsboat, tor, brave,  mullvadVPN, minecraft, discord, obs, gimp, kdenlive, shotcut, godot, blender, qbittorrent, keepassxc, qemu, virtmanager, 7zip, balenaEtcher, Kleopatra, neofetch

- **Multimedia**: `mpv`, `vlc`, ...
- **Security**: `ccrypt`, `GnuPG`, ...
- **Gaming**: `minecraft`, ...

## 5. Keybindings

| Key Combination                      | Action                  | Description                                                   |
|--------------------------------------|-------------------------|---------------------------------------------------------------|
| `Super + Space`                      | Launch Terminal         | Opens the default terminal                                    |
| `Super + Enter`                      | Dolphin                 | Opens the Dolphin file manager                                |
| `Super + F`                          | Firefox                 | Opens the Firefox web browser                                 |
| `Super + T`                          | Tor                     | Opens the Tor browser                                         |
| `Super + Q`                          | Quit Active Window      | Quits the current active window                               |
| `Super + R`                          | Rofi                    | Opens `Rofi` app launcher                                     |
| `Super + W`                          | Change Wallpaper        | Changes the current wallpaper                                 |
| `Super + [1-9]`                      | Switch to Workspace     | Changes to workspace corresponding to the pressed number      |
| `Super + Ctrl + [1-9]`               | Set Current Layout      | Sets the current layout to workspace corresponding to number |
| `Super + [arrow key]`                | Move to Window          | Moves to window in the direction of the pressed arrow key     |
| `Super + ]`                          | Toggle Split            | Toggles the window split                                      |
| `Super + [`                          | Toggle Float            | Toggles the floating mode for the current window              |
| `Super + Click and Drag`             | Move Floating Window    | Moves the floating window                                     |

Super + O = OBS
Super + M = Minecraft
Super + C = VSCode
Super + B = Newsboat
Super + K = KeyPassXC
Super + N or B = new text file? or specific text file for blog
Super + L = monthly list in md format
Super + G = GIMP

*Note*: Expand the keybindings, and feel free to categorize them if there are many.

## 6. Icons & Themes

### Icons:
- **Kora**: [GitHub](https://github.com/bikass/kora), [AUR Package](https://aur.archlinux.org/packages/kora-icon-theme)
- **Additional Icon**: [Link](https://www.pling.com/p/1366371)

### Themes:
- **Color Palette**: 
- **Cursor**: [Apple Cursor](https://github.com/ful1e5/apple_cursor)
- **Others**: Further theme configurations or suggestions go here.


## 7. Installation

Setting up the dotfiles and configurations from this repository.

1. **Clone the Repository**: Clone this repository to your local machine.
   ```bash
   git clone [Your Repo Link] ~/dotfiles

## 7. Installation

The following steps guide you through the process of setting up your system using these dotfiles. Please read each step thoroughly to avoid any issues.

### Step 1: Clone the Repository
Clone this repository to your desired location (commonly the home directory):

```bash
git clone [Your Repository Link] ~/dotfiles
```

Use the install script using 'symlink.sh'

```bash
cd ~/dotfiles/scripts
chmod +x symlink.sh
./symlink.sh
```

Otherwise, figure it out yourself, sorry

## 8. Appendix
inspiration dotfiles:
https://github.com/notwidow/hyprland
https://github.com/end-4/dots-hyprland/tree/summer-gruv
https://wiki.hyprland.org/Configuring/Example-configurations/
https://github.com/fufexan/dotfiles
https://github.com/taylor85345/cyber-hyprland-theme
https://christitus.com/my-new-desktop-hyprland/
https://github.com/hyper-dot/Arch-Hyprland
https://github.com/archcraft-os/archcraft-hyprland
https://github.com/nawfalmrouyan/hyprland
https://github.com/coffebar/dotfiles
https://gitlab.com/stephan-raabe/dotfiles

https://github.com/linkfrg/dotfiles
https://github.com/eneshecan/dotfiles
https://github.com/lauroro/hyprland-dotfiles
https://github.com/dxg4268/hyprdots

GPU passthrough on this?: https://www.youtube.com/watch?v=EujO_5KvCCo

https://www.youtube.com/watch?v=_nyStxAI75s
https://github.com/prasanthrangan/hyprdots
https://github.com/niraj998/dotfiles/tree/main/.config/eww
https://github.com/Saimoomedits/eww-widgets
https://github.com/elkowar/eww
https://elkowar.github.io/eww/

These are the default in archinstall 2.6.1:
added dunst as notification manager
qt5-wayland, qt6-wayland, xdg-desktop-portal-hpyrland
btop is kinda fire too, swappy maybe for screenshots?
no ranger, no starship

TODOs:
- installation steps
    - flash to installation medium, USB works, use balenaEtcher to flash .iso file onto USB, eject and neter boot menu (F12 on thinkpad)
    -iwctl, device list, station wlan0 scan, station wlan0 show, station wlan0 connect [WiFi name], then enter password, exit, then "archinstall"
    https://www.youtube.com/watch?v=E50pt992Ihc
    - go through installation steps, then 'reboot'

- draw up background image with bucket and name
- color palette of minecraft bucket:

--white: #FFFFFE;
--platinum: #D8D8D9;
--silver: #A8A8A8;
--sky-blue: #87CEFA;
--blue-crayola: #5B82F2;
--byzantine-blue: #2E59D3;

gsettings set org.gnome.desktop.interface gtk-theme adw-gtk3
gsettings set org.gnome.desktop.interface icon-theme Papirus
gsettings set org.gnome.desktop.interface font-name "JetBrains Mono Regular 11"