## Overview

My Arch Linux dotfiles running on a MacBook Pro 2015. Most of the settings are optimized for a laptop form factor, including HiDPI and power management. If you'd like to replicate my system continue reading below.

*Note: The installation steps assume you have [these](https://github.com/akarez/travel/blob/main/README.md#finishing-up) packages already installed*

![](https://github.com/akarez/macintosh/blob/main/screenshot.png)

## Installation

### Essential Packages

Install the YAY AUR helper. This will allow you to install packages from the Arch Linux community repo:

```
~$ git clone https://aur.archlinux.org/yay.git 

~$ cd yay

~$ makepkg -si
```

Install display, audio, and wireless packages:

*Note: If you have an AMD GPU install xf86-video-amdgpu instead*

```
~$ sudo pacman -S  pulseaudio alsa-utils xf86-video-intel xorg xorg-xinit xorg-xev xorg-xbacklight arandr bluez bluez-utils

~$ yay -S pulseaudio-ctl pavucontrol 
```

Install window management and system utilities:

```
~$ sudo pacman -S bspwm sxhkd slock alacritty ranger feh rofi picom firefox zip unzip brightnessctl wget upower cron zathura zathura-pdf-mupdf ttf-iosevka-nerd nodejs spotifyd

~$ yay -S polybar ueberzug coreshot xidlehook neofetch apple-fonts ttf-ms-win10-auto redshift spotify-tui
```

### Optional Packages

The following are packages that I use but are not necessary for a working system. I put them here anyway so I can copy paste the command when needed:

```
~$ sudo pacman -S kicad

~$ yay -S logisim jflap avr-gcc-atmel
```

## Configuration

The configuration files are managed with [GNU Stow](https://www.gnu.org/software/stow/). To setup, navigate into the cloned directory and enter the following command:

```
~$ stow alacritty bash bspwm dunst neofetch nvim polybar ranger rofi slock spotify sxhkd wallpapers x zathura
```
