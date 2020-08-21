xrandr --auto
xrandr --output eDP-1-1 --left-of HDMI-1-1
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --output HDMI-1 --primary

xdg-mime default pcmanfm.desktop inode/directory
xdg-mime default org.qutebrowser.qutebrowser.desktop x-scheme-handler/http
xdg-mime default org.qutebrowser.qutebrowser.desktop x-scheme-handler/https

setxkbmap ee us

session=${1:-bspwm}

case $session in
  bspwm) 
    sxhkd &
    exec bspwm
    ;;
  kde) exec startkde;;
  xfce|xfce4) exec startxfce4 ;;
  deepin)
    exec startdde 
    ;;
  budgie)
    export XDG_CURRENT_DESKTOP=Budgie:GNOME
    exec budgie-desktop
    ;;
  gnome)
    export XDG_SESSION_TYPE=x11
    export GDK_BACKEND=x11
    exec gnome-session
    ;;
  gnome-classic)
    export XDG_CURRENT_DESKTOP=GNOME-Classic:GNOME
    export GNOME_SHELL_SESSION_MODE=classic
    exec gnome-session --session=gnome-classic
    ;;
  *) exec $1 ;;
esac

