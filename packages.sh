#!/usr/bin/env bash
# WIP

# Comment/uncomment the groups you want
STOWLIST=()
PKGLIST=()

# COMMON
PKGLIST+=(git stow neovim fish networkmanager tmux)
STOWLIST+=(git nvim fish oh-my-fish tmux)

# Intel
PKGLIST+=(intel-ucode intel-media-driver)

# # AMD
# PKGLIST+=(amd-ucode)

# Wayland: Sway
PKGLIST+=(sway swayidle swaylock waybar alacritty bemenu gammastep grim imv mako qt5-wayland wpgtk-git)
STOWLIST+=(sway bash_wayland alacritty gammastep wpgtk wal mime_wayland gtk mako)

#########################################################
## X.org: common
#PKGLIST+=(xorg-server xorg-xmodmap unclutter xcape rofi arandr dunst maim slock lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings awesome-terminal-fonts lxappearance-gtk3 qt5-styleplugins vimix-gtk-themes-git numix-circle-icon-theme-git redshift wpgtk-git feh xorg-xrdb xorg-xinput xorg-xset)
#STOWLIST+=(x bash dunst redshift mime feh gtk rofi wal wpgtk)

## X.org: i3
#I3="i3-gaps polybar picom alacritty"
#PKGLIST+=(i3-gaps polybar picom alacritty)
#STOWLIST+=(alacritty i3 polybar picom)

## X.org: dwm
#DWM="xorg-xsetroot libxft-bgra"
#PKGLIST+=(xorg-xsetroot libxft-bgra)

## X.org: xmonad
#XMONAD="xmonad xmonad-contrib xmobar dmenu alacritty picom"
#PKGLIST+=(xmonad xmonad-contrib xmobar dmenu alacritty picom)
#STOWLIST+=(alacritty picom xmonad xmobar)
#########################################################

# Sound
SOUND="pulseaudio pamixer pavucontrol"
PKGLIST+=(pulseaudio pamixer pavucontrol)

# Font
FONT="otf-overpass nerd-fonts-iosevka noto-fonts-emoji noto-fonts noto-fonts-cjk"
PKGLIST+=(otf-overpass nerd-fonts-iosevka noto-fonts-emoji noto-fonts noto-fonts-cjk)

# Utilities
UTILITIES="udisks2 udiskie ntfs-3g glances neofetch htop nnn ncdu fd ripgrep exa fzf bat p7zip rsync zathura zathura-pdf-poppler gnome-system-monitor expac"
PKGLIST+=(udisks2 udiskie ntfs-3g glances neofetch htop nnn ncdu fd ripgrep exa fzf bat p7zip rsync zathura zathura-pdf-poppler gnome-system-monitor expac)
STOWLIST+=(zathura)

# Software
SOFTWARE="gnome-keyring nextcloud-client emacs firefox firefox-i18n-fr keepassxc libreoffice-fresh libreoffice-fresh-fr"
PKGLIST+=(gnome-keyring nextcloud-client emacs firefox firefox-i18n-fr keepassxc libreoffice-fresh libreoffice-fresh-fr)
STOWLIST+=(doom-emacs)

# Media
MEDIA="mpv"
PKGLIST+=(mpv)
STOWLIST+=(mpv)

# Music
MUSIC="mpd mpc ncmpcpp mpdscrobble-git"
PKGLIST+=(mpd mpc ncmpcpp mpdscrobble-git)
STOWLIST+=(mpd ncmpcpp)

# Python
PYTHON="python-pipenv python-pynvim"
PKGLIST+=(python-pipenv python-pynvim)

# Home
HOME="nfs-utils"
PKGLIST+=(nfs-utils)

echo paru -S ${PKGLIST[@]}
# paru -S ${PKGLIST[@]}

echo stow ${STOWLIST[@]}
# rm ../.bashrc

# echo "oh-my-fish"
# curl -L https://get.oh-my.fish | fish

# # tpm
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# wpg -a ~./Nextcloud/07_Images/hk/*
# wpg-install.sh -g
