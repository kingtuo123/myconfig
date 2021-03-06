#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main  -c $HOME/.config/polybar/top-config.ini &
polybar bottom  -c $HOME/.config/polybar/bottom-config.ini &
