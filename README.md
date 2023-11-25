# RustyBucketz30 Arch Linux Desktop Dotfiles

![sample wallpapers](./SampleBackgrounds.png)
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
1. [Software](#1-software)
2. [Directory Structure](#2-directory-structure)
3. [GUI Software](#3-gui-software)
4. [Keybindings](#4-keybindings)
5. [Installation](#5-installation)
6. [Inspiration & References](#6-inspiration--references)

## 1. Software
| Category               | Software               | Link                                          |
|------------------------|------------------------|-----------------------------------------------|
| Window Manager         | Hyprland               | [Website](https://hyprland.org/)              |
| Terminal Manager       | Alacritty              | [Website](https://alacritty.org/)             |
| File Manager           | Thunar                 | [GitHub](https://github.com/xfce-mirror/thunar) |
| Status Bar             | waybar                 | [GitHub](https://github.com/Alexays/Waybar)   |
| Launcher               | Rofi                   | [GitHub](https://github.com/davatorium/rofi)  |
| Shell                  | zsh, w/ OhMyZsh        | [GitHub](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) |
| Browser                | Firefox                | [Website](https://www.mozilla.org/en-US/firefox/new/) |
| Session Manager        | Wlogout                | [GitHub](https://github.com/ArtsyMacaw/wlogout) |
| Text Editor            | neovim                 | [Website](https://neovim.io/)                 |

## 2. Directory Structure

```
dotfiles/
│
├── hypr/
├── alacritty/
├── wlogout/
├── waybar/
├── wallpapers/
├── wal/
├── vim/
├── scripts/
├── rofi/
├── nvim/
├── login/
├── gtk/
├── dunst/
├── SampleBackgrounds.png
├── README.md
├── 1-install.sh
├── 2-symlink.sh
└── .bashrc
```

## 3. GUI Software:
A collection of various GUI-based software for multiple purposes.

- **Multimedia**: `mpv`, `vlc`, `obs`, `kdenlive`, `shotcut`, `gimp`, `blender`
- **Security**: `ccrypt`, `GnuPG`, `mullvadVPN`, `Kleopatra`, `7zip`
- **Gaming**: `minecraft`, `godot`, `discord`
- **Internet & Communication**: `tor`, `newsboat`, `qbittorrent`
- **Utilities**: `balenaEtcher`, `keepassxc`, `neofetch`, `qemu`, `virtmanager`

## 4. Keybindings

| Key Combination                      | Action                  |
|--------------------------------------|-------------------------|
| `Super + Space`                      | Launch Terminal         |
| `Super + Enter`                      | Thunar                  |
| `Super + F`                          | Firefox                 |
| `Super + SHIFT+ T`                   | Tor                     |
| `Super + BACKSPACE`                  | Quit Active Window      |
| `Super + R`                          | Rofi                    |
| `Super + SHIFT + W`                  | Change Wallpaper        |
| `Super + [1-9]`                      | Switch to Workspace     |
| `Super + Ctrl + [1-9]`               | Set Current Layout      |
| `Super + [arrow key]`                | Move to Window          |
| `Super + J`                          | Toggle Split            |
| `Super + T`                          | Toggle Float            |
| `Super + Click and Drag`             | Move Floating Window    |
| `Super + O`                          | OBS                     |
| `Super + C`                          | VSCode                  |
| `Super + N`                          | Newsboat                |
| `Super + K`                          | KeyPassXC               |
| `Super + G`                          | GIMP                    |

## 5. Installation

1. **Clone the Repository**: Clone this repository to your local machine.

```bash
git clone https://github.com/rustybucketz30/dotfiles.git
```

2. **Install Packages & Symlinks**: Use the install script using '2-symlink.sh'

```bash
cd dotfiles/
./1-install.sh
./2-symlink.sh
```

Otherwise, figure it out yourself, sorry

## 6. Appendix

## Inspiration and Resources

- [notwidow/hyprland](https://github.com/notwidow/hyprland)
- [end-4/dots-hyprland (summer-gruv)](https://github.com/end-4/dots-hyprland/tree/summer-gruv)
- [fufexan/dotfiles](https://github.com/fufexan/dotfiles)
- [taylor85345/cyber-hyprland-theme](https://github.com/taylor85345/cyber-hyprland-theme)
- [hyper-dot/Arch-Hyprland](https://github.com/hyper-dot/Arch-Hyprland)
- [archcraft-os/archcraft-hyprland](https://github.com/archcraft-os/archcraft-hyprland)
- [nawfalmrouyan/hyprland](https://github.com/nawfalmrouyan/hyprland)
- [coffebar/dotfiles](https://github.com/coffebar/dotfiles)
- [stephan-raabe/dotfiles (GitLab)](https://gitlab.com/stephan-raabe/dotfiles)
- [linkfrg/dotfiles](https://github.com/linkfrg/dotfiles)
- [eneshecan/dotfiles](https://github.com/eneshecan/dotfiles)
- [lauroro/hyprland-dotfiles](https://github.com/lauroro/hyprland-dotfiles)
- [dxg4268/hyprdots](https://github.com/dxg4268/hyprdots)
- [prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots)
- [niraj998/dotfiles (eww config)](https://github.com/niraj998/dotfiles/tree/main/.config/eww)
- [Saimoomedits/eww-widgets](https://github.com/Saimoomedits/eww-widgets)
- [elkowar/eww](https://github.com/elkowar/eww)
- [InioX/dotfiles](https://github.com/InioX/dotfiles/)
- [abaan404/dotfiles](https://github.com/abaan404/dotfiles)
- [hyprland.org Example Configurations](https://wiki.hyprland.org/Configuring/Example-configurations/)
- [eww by elkowar Documentation](https://elkowar.github.io/eww/)
- [My New Desktop - Hyprland by Chris Titus](https://christitus.com/my-new-desktop-hyprland/)
- [GPU Passthrough Guide](https://www.youtube.com/watch?v=EujO_5KvCCo)
- [Random YouTube Video 1](https://www.youtube.com/watch?v=_nyStxAI75s)
- [Random YouTube Video 2](https://www.youtube.com/watch?v=nNvciN4sGKQ&t=69s)