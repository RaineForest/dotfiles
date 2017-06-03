
#xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#disable screen saver and screen blanking
xset s off -dpms &

#~/wifi_setup.sh &

#disbale trackpad while typing
syndaemon -i 0.33 -t -K -R -d

#exec startkde
exec i3

