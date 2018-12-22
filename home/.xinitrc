[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#xrandr --auto
#xrandr --output HDMI-1-1 --right-of eDP-1-1
#xrandr --output HDMI-1-1 --primary

#xdg-mime default qutebrowser.desktop x-scheme-handler/http
#xdg-mime default qutebrowser.desktop x-scheme-handler/https
#xdg-mime default pcmanfm.desktop inode/directory

# wait 1

# exec i3
sxhkd &
exec bspwm ~/.config/bspwm/bspwmrc 

#xrandr --auto
#exec i3

# exec gnome-session
# exec enlightenment_start

