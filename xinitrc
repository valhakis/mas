xrandr --auto
xrandr --output eDP-1-1 --left-of HDMI-1-1

setxkbmap ee us

sxhkd &
exec bspwm
