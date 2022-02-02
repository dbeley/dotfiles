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
PKGLIST+=(sway swayidle swaylock waybar foot wofi gammastep grim imv mako qt5-wayland wpgtk-git)
STOWLIST+=(sway bash_wayland foot gammastep wpgtk wal mime_wayland gtk mako wofi)

#########################################################
## X.org: common
#PKGLIST+=(xorg-server xorg-xmodmap unclutter xcape rofi arandr dunst maim slock lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings awesome-terminal-fonts lxappearance-gtk3 qt5-styleplugins vimix-gtk-themes-git numix-circle-icon-theme-git redshift wpgtk-git feh xorg-xrdb xorg-xinput xorg-xset)
#STOWLIST+=(x bash dunst redshift mime feh gtk rofi wal wpgtk)

## X.org: i3
#PKGLIST+=(i3-gaps polybar picom alacritty)
#STOWLIST+=(alacritty i3 polybar picom)

## X.org: dwm
#PKGLIST+=(xorg-xsetroot libxft-bgra)

## X.org: xmonad
#PKGLIST+=(xmonad xmonad-contrib xmobar dmenu alacritty picom)
#STOWLIST+=(alacritty picom xmonad xmobar)
#########################################################

# Sound
PKGLIST+=(pulseaudio pamixer pavucontrol)

# Font
PKGLIST+=(otf-overpass nerd-fonts-iosevka noto-fonts-emoji noto-fonts noto-fonts-cjk)

# Utilities
PKGLIST+=(udisks2 udiskie ntfs-3g glances neofetch htop nnn ncdu fd ripgrep exa fzf bat p7zip rsync zathura zathura-pdf-poppler gnome-system-monitor expac)
STOWLIST+=(zathura)

# Software
PKGLIST+=(gnome-keyring nextcloud-client emacs firefox firefox-i18n-fr keepassxc libreoffice-fresh libreoffice-fresh-fr)
STOWLIST+=(doom-emacs)

# Media
PKGLIST+=(mpv)
STOWLIST+=(mpv)

# Music
PKGLIST+=(mpd mpc ncmpcpp mpdscrobble-git)
STOWLIST+=(mpd ncmpcpp)

# Python
PKGLIST+=(python-pipenv python-pynvim)

# Home
PKGLIST+=(nfs-utils)

# Steam
PKGLIST+=(steam vulkan-intel lib32-vulkan-intel xorg-xwayland)

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
