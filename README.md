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

Tools used to setup, configure, and manage various aspects of the system.

performance monitoring - btop
configure firewall, vpn - ufw, mullvap-vpn
configure keybindings for keyboard (Logitech G810 Wired) - piper, libratbag, g810-led, xbind-keys
file backup and sync - rsync, timeshift

somethign for audio mngmt?, bluetooth devices?
Graphics Drivers for NV168 (TU116): NVIDIA 1660 Ti, driver used: nvidia-open

## 2. Software
| Category               | Software               | Link                                          |
|------------------------|------------------------|-----------------------------------------------|
| Window Manager         | Hyprland               | [Website](https://hyprland.org/)              |
| Terminal Manager       | Alacritty              | [Website](https://alacritty.org/)             |
| File Manager           | Dolphin                | [GitHub](https://github.com/KDE/dolphin)      |
| Status Bar             | waybar                 | [GitHub](https://github.com/Alexays/Waybar)   |
| Launcher               | Rofi                   | [GitHub](https://github.com/davatorium/rofi)  |
| Shell                  | zsh, w/ OhMyZsh        | [GitHub](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) |
| Browser                | Firefox                | [Website](https://www.mozilla.org/en-US/firefox/new/) |
| Session Manager        | Wlogout                | [GitHub](https://github.com/ArtsyMacaw/wlogout) |
| Text Editor            | neovim                 | [Website](https://neovim.io/)                 |

login screen - "ly" or "login" - having trouble configuring ly at the moment


*See [Appendix](#8-appendix--inspiration) for additional software and configurations.*

## 3. Directory Structure

```
dotfiles/
│
├── hypr/
│ ├── hyprland.conf
│ ├── keybindings.conf
│ ├── starthypr.sh
│ └── gtk.sh
│
├── alacritty/
│ └── alacritty.yml
│
├── wlogout/
│
├── waybar/
│ ├── config
│ ├── style.css
│ └── launch.sh
|
├── wallpapers/
│
├── wal/
│
├── vim/
│
├── scripts/
│
├── rofi/
│
├── nvim/
│
├── login/
│
├── gtk/
│
├── dunst/
│
├── .back/
│
├── README.md
├── 0_install.sh
├── 1_install.sh
├── 3_symlink.sh
└── .bashrc

<!-- None -->
├── firefox/
│   └── userChrome.css  # If you plan to style Firefox

```
## 4. Software List & Dependencies

### Dependencies: 
Essential libraries and tools required to ensure a smooth experience with the configurations and setups.

- **Essential**: `lxappearance`, ...
- **Optional**: [Additional dependencies or alternatives]

### GUI Software:
A collection of various GUI-based software for multiple purposes.

- **Multimedia**: `mpv`, `vlc`, `obs`, `kdenlive`, `shotcut`, `gimp`, `blender`
- **Security**: `ccrypt`, `GnuPG`, `mullvadVPN`, `Kleopatra`, `7zip`
- **Gaming**: `minecraft`, `godot`, `discord`
- **Internet & Communication**: `tor`, `newsboat`, `qbittorrent`
- **Utilities**: `balenaEtcher`, `keepassxc`, `neofetch`, `qemu`, `virtmanager`

## 5. Keybindings

| Key Combination                      | Action                  |
|--------------------------------------|-------------------------|
| `Super + Space`                      | Launch Terminal         |
| `Super + Enter`                      | Dolphin                 |
| `Super + F`                          | Firefox                 |
| `Super + T`                          | Tor                     |
| `Super + BACKSPACE`                  | Quit Active Window      |
| `Super + R`                          | Rofi                    |
| `Super + SHIFT + W`                  | Change Wallpaper        |
| `Super + [1-9]`                      | Switch to Workspace     |
| `Super + Ctrl + [1-9]`               | Set Current Layout      |
| `Super + [arrow key]`                | Move to Window          |
| `Super + ]`                          | Toggle Split            |
| `Super + [`                          | Toggle Float            |
| `Super + Click and Drag`             | Move Floating Window    |
| `Super + O`                          | OBS                     |
| `Super + M`                          | Minecraft               |
| `Super + C`                          | VSCode                  |
| `Super + B`                          | Newsboat                |
| `Super + K`                          | KeyPassXC               |
| `Super + G`                          | GIMP                    |


Super + N or B = new text file? or specific text file for blog
Super + L = monthly list in md format
*Note*: Expand the keybindings, and feel free to categorize them if there are many.

## 7. Installation

- installation steps
    - flash to installation medium, USB works, use balenaEtcher to flash .iso file onto USB, eject and neter boot menu (F12 on thinkpad, lenono devices - F1 or F2 as well, but that might be UEFI)
    -iwctl, device list, station wlan0 scan, station wlan0 show, station wlan0 connect [WiFi name], then enter password, exit, then "archinstall"
    https://www.youtube.com/watch?v=E50pt992Ihc
    - go through installation steps, then 'reboot'
    - if you get stuck somewher after instlalation, CTRL, ALT, F1,   F2 or some combination of those should get you to a command prompt where you can login and shit

1. **Clone the Repository**: Clone this repository to your local machine.

```bash
git clone [Your Repository Link] ~/dotfiles
```

2. **Install Packages & Symlinks**: Use the install script using '2-symlink.sh'

```bash
cd ~/dotfiles/scripts
chmod +x 1-install.sh 2-symlink.sh
./install.sh
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

https://github.com/InioX/dotfiles/


https://github.com/end-4/dots-hyprland
https://www.youtube.com/watch?v=nNvciN4sGKQ&t=69s
https://github.com/abaan404/dotfiles

TODOs:
- draw up background image with bucket and name
 - configure file manager ot fit with theme - dolphin configuration is hard i guess
 - scripting(.sh files):
  - toggle for black and white
  - newsboat open, load and mpv fetch for YT video (maybe 2 or 3 scripts)
  - minecrfat recording setup hotkey
  - weather widget
- custom volume mixer/scrollbar thing to manage sound? look for packages?
- fix install scripts cause they suck - symlinking sucks
- fix the login screen for /login, or just figure out how to configure ly
- custom firefox profiles: https://news.ycombinator.com/item?id=37952719

NOTES:
 - there is no logout manager (swaylock, etc), b/c mine is a desktop PC and is either off or in use. Install one yourself if you want one
 - The install scripts give you no choice, fork the repository and edit the scripts if you want them to install different stuff
 - no battery icon because this is a desktop PC - always plugged in
 - minimal on purpose, unix philosophy - do one thing and do it right. dedicated tools for dedicated jobs, OSes are weird because you have to do a lot by nature but segment software to do particular things
 - color palette of minecraft bucket:
--white: #FFFFFE;
--platinum: #D8D8D9;
--silver: #A8A8A8;
--sky-blue: #87CEFA;
--blue-crayola: #5B82F2;
--byzantine-blue: #2E59D3;