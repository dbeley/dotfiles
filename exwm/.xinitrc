# Disable access control
xhost +SI:localuser:$USER

# Themes, etc
#gnome-settings-daemon &

# Fallback-cursor
xsetroot -cursor_name left_ptr

# Keyboard repeat rate
xset r rate 200 60

# Start emacs
#exec dbus-launch --exit-with-session emacs

wal -i $HOME/Nextcloud/5. Fonds d'écran/wal
setxkbmap us -variant intl
xset -dpms
xset s off
xset -b
urxvtd -q -o -f
redshift-gtk &
nm-applet &
dunst &
udiskie --use-udisks2 &
nextcloud &

export VISUAL=emacsclient
export EDITOR="$VISUAL"
