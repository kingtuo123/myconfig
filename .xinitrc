#export GDK_SCALE=2
export XMODIFIERS=@im=fcitx  
export QT_IM_MODULE=fcitx  
export GTK_IM_MODULE=fcitx  
export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_CONFIG_HOME="$HOME/.config"




xrdb -load .Xresources &
#picom -b &
fcitx -Ds5& > /dev/null& 
xinput --set-prop 14 "libinput Accel Speed" 0.5 &







feh --bg-scale /home/king/Pictures/wall.png &

#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

exec ck-launch-session dbus-launch i3
#exec awesome
