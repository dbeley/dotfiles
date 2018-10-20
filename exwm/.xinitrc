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

setxkbmap us -variant intl &
unclutter --timeout 3 --ignore scrolling &
~/scripts/touchpad_toggle.sh &
xset -dpms &
xset s off &
xset -b &
urxvtd -q -o -f &
#compton --config ~/.config/compton/compton.conf
redshift-gtk &
nm-applet &
dunst &
udiskie --use-udisks2 &
nextcloud &

wal -gi "~/Nextcloud/5. Fonds d'écran/wal" &

export VISUAL=emacsclient
export EDITOR="$VISUAL"
