# dotfiles using GNU Stow

![screenshot](https://raw.githubusercontent.com/dbeley/dotfiles/master/screenshot.png)

# Software

Some config files might need the [scripts](https://github.com/dbeley/scripts) repo in the home directory.

To create symbolic links
```
git clone https://github.com/dbeley/dotfiles
cd dotfiles
stow vim
```

## WMs

* i3/i3-gaps (with polybar): Extensive configuration. Several modes for gaps presets or resizing/moving containers.
* sway (with waybar): Extensive configuration without XWayland. Mostly the same as i3 configuration.
* xmonad (with xmobar): Extensive configuration. Named scratchpads, several layouts.
* dwm: Extensive configuration (available on my [fork](https://github.com/dbeley/dwm)).
* bspwm (with polybar): Simple configuration.
* exwm: Simple configuration.

## Editors

* doom-emacs: Main editor.
* emacs: Extensive configuration, including exwm (needs to uncomment stuff).
* neovim (with vim-plug): Extensive configuration, mainly for python and go.
* vim: Very simple configuration.

## Web Browsers

* firefox: Extensive user.js configuration, privacy-focused.
* qutebrowser: Extensive configuration, with some userscripts.

## Terminal Emulators

* alacritty
* st (available on my [fork](https://github.com/dbeley/st))
* termite (deprecated)
* urxvt
* terminator


## Utilities

* fish
* oh-my-fish
* tmux: Keybindings, powerline theme.
* pywal / wpgtk: GTK/QT theme, colors for i3, sway, bspwm, dwm.
* picom
* dunst / mako
* feh / imv
* ledger
* ranger / nnn
* redshift / gammastep
* rofi / dmenu / bemenu

## Media Players

* mpv
* mpd
* ncmpcpp
* beets

## Others

The following folders need to have a different root than `~` with the `stow -t` command
* NetworkManager: `stow -t /etc/NetworkManager/conf.d/ NetworkManager`
* dracut: `stow -t /etc/dracut.conf.d/ dracut`
* xorg: `stow -t /usr/share/X11/xorg.conf.d/ xorg`
* collatz: `stow -t /var/lib/boinc/projects/boinc.thesonntags.com_collatz/ collatz`
* reflector: `stow -t /etc/xdg/reflector/ reflector`
