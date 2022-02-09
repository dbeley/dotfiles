# dotfiles using GNU Stow

Wanna get started with stow? Check out my [blog post about it](https://dbeley.ovh/en/post/2021/01/09/easily-manage-your-linux-config-files-with-stow/))!

![screenshot_2017](https://raw.githubusercontent.com/dbeley/dotfiles/master/screenshot_2017.png)

![screenshot_2022](https://raw.githubusercontent.com/dbeley/dotfiles/master/screenshot_2022.png)

# Software

Some config files might need my own [scripts](https://github.com/dbeley/scripts) repo in the home directory.

To create symbolic links:
```
git clone https://github.com/dbeley/dotfiles
cd dotfiles
stow nvim sway bash_wayland
```

## WMs

* sway (with waybar): Extensive configuration without XWayland. Mostly the same as i3 configuration.
* i3/i3-gaps (with polybar): Extensive configuration. Several modes for gaps presets or resizing/moving containers.
* dwm: Extensive configuration (available on my [fork](https://github.com/dbeley/dwm)).
* xmonad (with xmobar): Extensive configuration. Named scratchpads, several layouts.
* bspwm (with polybar): Simple configuration.
* exwm: Simple configuration.

## Editors

* doom-emacs: Main editor.
* neovim (with vim-plug): Extensive configuration, mainly for python and go.
* vim: Very simple configuration.
* ideavim
* emacs (deprecated): Extensive configuration, including exwm (needs to uncomment stuff).

## Web Browsers

* firefox: Extensive user.js configuration, privacy-focused.
* qutebrowser: Extensive configuration, with some userscripts.

## Terminal Emulators

* foot
* kitty
* alacritty
* st (available on my [fork](https://github.com/dbeley/st))
* termite (deprecated)
* urxvt
* terminator


## Utilities

* fish (with oh-my-fish)
* zsh (with oh-my-zsh)
* tmux: Keybindings, powerline theme.
* pywal / wpgtk: GTK/QT theme, colors for i3, sway, bspwm, dwm.
* picom
* dunst / mako
* feh / imv
* ledger
* ranger / nnn
* redshift / gammastep
* wofi /rofi / dmenu / bemenu

## Media Players

* mpv: Automatic subtitles fetching with subliminal.
* mpd
* ncmpcpp
* beets

## Others

The following config folders need to have a different root than `~`. You can create symbolic links to a specific folder with the `stow -t` command.
* NetworkManager: `stow -t /etc/NetworkManager/conf.d/ NetworkManager`
* dracut: `stow -t /etc/dracut.conf.d/ dracut`
* xorg: `stow -t /usr/share/X11/xorg.conf.d/ xorg`
* collatz: `stow -t /var/lib/boinc/projects/boinc.thesonntags.com_collatz/ collatz`
* reflector: `stow -t /etc/xdg/reflector/ reflector`
