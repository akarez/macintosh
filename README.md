
## Overview
My Arch Linux dotfiles running on a MacBook Pro 2015. Most of the settings are optimized for a laptop form factor, including HiDPI and power management.

![](https://github.com/akarez/macintosh/blob/main/screenshot.png)

## Installation

### Essential Packages

Install an AUR helper. This will allow you to install packages directly from the Arch Linux community repo.
```
~# git clone https://aur.archlinux.org/yay.git 
~# cd yay
~# makepkg -si
```


Install display, audio, and wireless packages

*Note: If you have an AMD GPU install xf86-video-amdgpu instead*

```
~# pacman -S  xf86-video-intel xorg xorg-xinit pulseaudio
```





### Optional Packages



## Configuration

The configuration files are managed with [GNU Stow](https://www.gnu.org/software/stow/).

To install, navigate into the cloned directory and enter the following command:
```
stow alacritty bash bspwm dunst neofetch nvim polybar ranger rofi slock spotify sxhkd wallpapers x zathura
```
